#tagging
from lxml.html import parse
import sys
def traverse(root):
	if root is None:
		return
	else:
		attr_id = str(root.attrib['id'])
		print "property('%s','tag','%s')."%(attr_id,str(root.tag))

		attrs = root.attrib
		for attr in attrs:
			print "property('%s','%s','%s')."%(attr_id, attr, attrs[attr])
		for child in root:
			print "parent('"+str(root.attrib['id'])+"','"+str(child.attrib['id'])+"')."
			traverse(child)

tree = parse(sys.argv[-1])
root = tree.getroot()
traverse(root)
root.tag
