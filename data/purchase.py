# -*- coding: utf-8 -*-
 
from django.http import HttpResponse
from django.shortcuts import render
 
# 表单
def purchase_form(request):
    return render(request,'purchase_form.html')
 
# 接收请求数据
def purchase(request):  
    request.encoding='utf-8'
    if 'milk' in request.GET and request.GET['milk']:
        message = '你奶粉采购为: ' + request.GET['milk']
    else:
        message = '你提交了空表单'
    return HttpResponse(message)
