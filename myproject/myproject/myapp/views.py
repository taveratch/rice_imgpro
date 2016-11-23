# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse

from myproject.myapp.models import Document
from myproject.myapp.models import Profile
from myproject.myapp.forms import DocumentForm


def list(request):
    # Handle file upload
    if request.method == 'POST':
        form = DocumentForm(request.POST, request.FILES)
        if form.is_valid():
            newdoc = Document(docfile=request.FILES['docfile'])
            newdoc.save()
            # return HttpResponseRedirect(reverse('list'))
    else:
        form = DocumentForm()
        
    profile = Profile()
    print("X",profile.photo.avatar)
    # Load documents for the list page
    documents = Document.objects.all()


    # Render list page with the documents and the form
    return render(
        request,
        'list.html',
        {'documents':documents,'form': form,'profile':profile}
    )
