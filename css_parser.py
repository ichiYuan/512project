from tinycss.css21 import CSS21Parser

css = open('style.css','r').read()
styles = CSS21Parser().parse_stylesheet(css)

for rule in styles.rules:
	selectors = rule.selector
	for decl in rule.declarations:
		#single selector, single value
		if len(decl.value) == 1 and len(selectors) == 1:
			selector_value = selectors[0].value
			#property(id,tag,class,name,value)
			#take care of percentage value
			#take care of value with special symbols
			if selector_value[0] == '.':
				selector_value = selector_value[1:]
				print "property('" + "_,_,'" + selector_value + "','" + decl.name + "','" + str(decl.value[0].value)+"')."
			elif selector_value[0] == '#':
				selector_value = selector_value[1:]
				print "property('" +  selector_value + "',_,_" +",'" + decl.name + "','"+ str(decl.value[0].value)+"')."
			else:
				print "property(_,'" +  selector_value + "',_" +",'" + decl.name + "','" + str(decl.value[0].value)+"')."
		#TODO multiple value, multiple selectors