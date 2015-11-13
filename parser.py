#tagging
from lxml.html import parse

def traverse(root):
	if root is None:
		return
	else:
		print "tag('"+str(root.attrib['id'])+"','"+str(root.tag)+"')."
		attrs = root.attrib
		attr_id = attrs.get('id')
		attr_class = attrs.get('class')
		print_str = "property("
		if attr_id != None:
			print_str += "'"+attrs['id'] + "',"
		else:
			print_str += '_,'
		print_str += "'"+root.tag +"',"
		if attr_class != None:
			print_str += "'"+attrs['class'] +"',"
		else:
			print_str += '_,'
		for attr in attrs:
			if attr not in ['id','class']:
				print print_str +"'"+ attr + "','" + attrs[attr] +"')."
		for child in root:
			print "parent('"+str(root.attrib['id'])+"','"+str(child.attrib['id'])+"')."
			traverse(child)

tree = parse("test_tagged.html")
root = tree.getroot()
traverse(root)
root.tag