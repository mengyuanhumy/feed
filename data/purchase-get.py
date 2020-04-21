# -*- coding: utf-8 -*-
 
from django.http import HttpResponse
from django.shortcuts import render
 
# 表单
def purchase_form(request):
    return render(request,'purchase_form.html')
 
# 接收请求数据
def purchase(request):  
    """
    [(106863163, 'Lu Yao 路垚', 'SoMnus丶M', 'CN', 2), (101695162, 'Xu Linsen 徐林森', 'FY', 'CN', 4)]
    """
    request.encoding='utf-8'
    retcode=200
    param=[]

    if 'nf' in request.GET and request.GET['nf']:
        #param=param.append("nf",request.GET['nf'])
        
        message = '你搜索的内容为: ' +request.GET['nf']
    else:
        message = '你提交了空表单'
    return HttpResponse(message)
