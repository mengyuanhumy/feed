# -*- coding: utf-8 -*-
 
from django.shortcuts import render
from django.views.decorators import csrf
 
# 接收POST请求数据
def consume(request):
    ctx ={}
    if request.POST:
        ctx['rlt'] = request.POST['milk']
        ctx['r2'] = request.POST['wiper']
    return render(request, "consume_form.html", ctx)
