# from django.shortcuts import render
# from django.shortcuts import render_to_response

# # Create your views here.
# def index(request):
#     return render_to_response('img/index.html',)
from django.shortcuts import render
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from models import Document
from forms import DocumentForm
import os

def sumY(str):
    print "SUMY"+str
    print ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    re = []
    strs = str.split(')')
    print type(str)
    print len(strs)
    for x in strs:
        print ">>>>>"+x
        if len(x.split(',')) > 1:
            x_1 = (x.split(',')[0])[3:-1]
            print ">>>>>>>X_1"+x_1
            x_2 = (x.split(',')[1])
            print ">>>>>>>X_2"+x_2
            class X(object):
                X_1 = x_1
                X_2 = x_2
            temp = X()
            re.append(temp)
    print ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    return re

def list(request):
    
    
    # Handle file upload
    if request.method == 'POST':
        form = DocumentForm(request.POST, request.FILES)
        if form.is_valid():
            newdoc = Document(docfile=request.FILES['docfile'])
            newdoc.save()

            documents = Document.objects.all()
            ind = 0
            result = "temp"
            for i in documents:
                print i.docfile.url
                ind = ind + 1
                if ind == len(documents):
                    result = i.docfile.url

            print "XXXXX"
                # var_1 = ' ../ri.txt'
                # var_2 = ' ../ri_ana.txt'
                # var_3 = ' ../ri.png'
                # var_4 = ' ../ri_img.png'
                # os.system('bash django.sh'+var_1+var_2+var_3+var_4)
            print ">>>>>>>"+result
            var_1 = ' x.txt'
            var_2 = ' x_ana.txt'
            var_3 = ' rice'+result
            var_4 = ' '+result
            os.system('bash django.sh'+var_1+var_2+var_3+var_4)
            var_5 =  'images/'+result
            print "------------>"+result
            in_put = open('result.txt','r')
            in_ = in_put.read()  
            print "AAAAAAAAAAAAAAAA"
            re = sumY(in_)
            re[0].X_1 = "["+re[0].X_1
            for z in re:
                z.X_1 = z.X_1[6:]
            print re
            print in_
            print "AAAAAAAAAAAAAAAA"   
            # Redirect to the document list after POST
            # return HttpResponseRedirect(reverse('list'))
            return render(request,'img/diagnose.html',{'f':result,'l':var_5,'s':re})
    else:
        form = DocumentForm()  # A empty, unbound form

    # Load documents for the list page
    documents = Document.objects.all()

    ind = 0
    result = "temp"
    for i in documents:
        print i.docfile.url
        ind = ind + 1
        if ind == len(documents):
            result = i.docfile.url
    
    print "RR",result

    rezult = "{% static \'"+result+"\' %}"
    print "XX",rezult


    # Render list page with the documents and the form
    return render(
        request,
        'img/index.html',
        {'documents': documents, 'form': form, 'f': result}
    )

# def dia(request):
#     # Handle file upload
#     if request.method == 'POST':
#         form = DocumentForm(request.POST, request.FILES)
#         if form.is_valid():
#             newdoc = Document(docfile=request.FILES['docfile'])
#             newdoc.save()

#             # Redirect to the document list after POST
#             return HttpResponseRedirect(reverse('list'))
#     else:
#         form = DocumentForm()  # A empty, unbound form

#     # Load documents for the list page
#     documents = Document.objects.all()

#     ind = 0
#     result = "temp"
#     for i in documents:
#         print i.docfile.url
#         ind = ind + 1
#         if ind == len(documents):
#             result = i.docfile.url
    
#     print "RR",result

#     rezult = "{% static \'"+result+"\' %}"
#     print "XX",rezult


#     # Render list page with the documents and the form
#     return render(
#         request,
#         'img/diagnose.html',
#         {'documents': documents, 'form': form, 'f': result}
#     )