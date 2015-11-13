#tagging
import sys
from lxml import etree
def traverse(root):
	cur = []
	st = []
	cur.append(root)
	st.append(0)
	counter = 1
	while len(cur) != 0:
		if st[-1] == 0:
			if cur[-1] != None:
				#only give ids to ones don't have id
				if 'id' in cur[-1].attrib:
				#	print 'idPair(' + cur[-1].attrib['id'] + ',' + str(counter) + ')'
				#cur[-1].attrib['idx'] = 'a'
					print cur[-1].attrib['id']
				else:
					#print cur[-1].attrib['id']	
					cur[-1].set('id', 'id' + str(counter))
					counter += 1
				st[-1] = 1
				new = []
				for ch in range(len(cur[-1])):
					child = cur[-1][ch]
					new.append(child)
					st.append(0)
				if len(new) > 0:
					new.reverse()
					#new = new.reverse()
				cur += new

			else:
				st[-1] = 1
		else:
			del cur[-1]
			del st[-1]
	return

parser = etree.HTMLParser(remove_comments = True)
tree = etree.parse(sys.argv[-1],parser)
root = tree.getroot()
traverse(root)
tree.write("test_tagged.html")