from tinycss.css21 import CSS21Parser
import cssselect

css = open('style.css','r').read()
styles = CSS21Parser().parse_stylesheet(css)

for ruleIdx in range(len(styles.rules)):
	rule = styles.rules[ruleIdx]
	selectors = rule.selector
	selector_string = selectors.as_css()
	specs = [s.specificity() for s in cssselect.parse(selector_string)]
	for i in range(len(specs)):
		spec = specs[i][0] * 100 + specs[i][1] * 10 + specs[i][2]
		spec = spec * 1000 + ruleIdx
		specs[i] = spec

	for decl in rule.declarations:

		if len(decl.value) == 1:
			decl_value = "'" + str(decl.value[0].value) + "'"
		else:
			decl_value = '[' + ','.join(["'"+str(x.value)+"'" for x in decl.value if x.type != 'S']) + ']'
		
		# A0,...,A(N-1) each selector
		# AN final node
		N = len(selectors)
		specIdx = 0
		print "rule(A%d,'%s',%s,%d):-" % (N,decl.name,decl_value,specs[specIdx])
		for i in range(N):
			selector_value = selectors[i].value

			#property(id,tag,class,name,value)
			#take care of percentage value
			#take care of value with special symbols

			# "A B" -> ancestor(A,B)
			if selectors[i].type == 'S':
				if selectors[i-1].value != ',':
					print "    ancestor(A%d,A%d)," % (i-1,i+1)
			# A,... -> A = AN;...
			elif selector_value == ',':
				print "    A%d = A%d." % (i-1,N)
				specIdx += 1
				print "rule(A%d,'%s',%s,%d):-" % (N,decl.name,decl_value,specs[specIdx])
			elif selector_value == '.':
				if i > 0:
					if selectors[i-1].type == 'IDENT':
					# 	# A.B -> A = B
						print "    A%d = A%d," % (i-1,i+1)
					else:
					# 	# A .B -> . = B
						print "    A%d = A%d," % (i,i+1)

			elif selector_value[0] == '#':
				selector_value = selector_value[1:]
				if i > 0 and selectors[i-1].type == 'IDENT':
					print "    A%d = A%d," % (i-1,i)
				print "    property(A%d,'id','%s')," % (i,selector_value)
			else:
				if i > 0 and selectors[i-1].value == '.':
					print "    property(A%d,'class','%s')," % (i,selector_value)
				else:
					print "    property(A%d,'tag','%s')," % (i,selector_value)

			if i == N-1:
				print "    A%d = A%d." % (i,N)