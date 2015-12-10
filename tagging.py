#tagging
import sys
import os
from lxml import etree
def traverse(root):
	cur = []
	st = []
	ids = []
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
					ids.append(cur[-1].attrib['id'])
					print cur[-1].attrib['id']
				else:
					#print cur[-1].attrib['id']	
					cur[-1].set('id', 'id' + str(counter))
					ids.append('id' + str(counter))
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
	return ids

parser = etree.HTMLParser(remove_comments = True)
tree = etree.parse(sys.argv[-1],parser)
root = tree.getroot()
ids = traverse(root)
outfile = os.path.dirname(sys.argv[-1])+"/test_tagged.html"
print outfile
tree.write(outfile)

# get position
from selenium import webdriver
driver = webdriver.Firefox()
driver.get('file://'+os.getcwd()+'/'+outfile)
driver.save_screenshot(os.getcwd()+'/screenshot.png')
f = open('region','w')
for eleid in ids:
	ele = driver.find_element_by_id(eleid)
	line = '%s %d %d %d %d\n' % (eleid,
		ele.location['y'],ele.location['x'],
		ele.size['height'],ele.size['width'])
	f.write(line)
f.close()
driver.quit()

import shutil
shutil.move(outfile,'./test_tagged.html')