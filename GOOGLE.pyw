from bs4 import BeautifulSoup
import requests
import sys, getopt
import urllib.parse

def main(argv):
    inputfile = ''
    inputfile = urllib.parse.quote(inputfile.encode('utf8'), ':/')
    numberfile = ''
    try:
        opts, args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
    except getopt.GetoptError:
        print ('spotitube.py -i <Search Keyword> -o <Index>')
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ('spotitube.py -i <Search Keyword> -o <Index>')
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputfile = arg
        elif opt in ("-o", "--ifile"):
            numberfile = arg
    html_content = requests.get(inputfile).text
    soup = BeautifulSoup(html_content, "lxml")
    print(soup.findAll("p",{"id":"dictionary_translate_article_translation"}))

if __name__ == "__main__":
    main(sys.argv[1:])
