import os
import sys
import Image

if(len(sys.argv) == 1):
    print "Please provide Image folder path as an argument."
    print "Usage: python thumbnail_factory.py <FolderPath>"
    sys.exit()
rootdir = sys.argv[1]

for root, subFolders, files in os.walk(rootdir):
    for filename in files:
        if "_thumbnail" in filename:
            continue
        filepath = os.path.join(root,filename)
        thumbnail_path = str(os.path.splitext(filepath)[0]) + "_thumbnail" + str(os.path.splitext(filepath)[1])

        out = file(thumbnail_path, "w")
        try:
            img = Image.open(filepath)
            print "Generating Thumbnail for " + filepath
            img.thumbnail( (100,100) )
            img.save(out, 'JPEG')
        except Exception as e:
            print "Error for " + filepath + " : " + str(e)
        finally:
            out.close()
