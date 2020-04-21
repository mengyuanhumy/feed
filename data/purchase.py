# -*- coding: utf-8 -*-
 
from django.shortcuts import render
from django.views.decorators import csrf
 
def insert(res):
    """
    query="insert into purchase (item_name,date,quantity,price,store) values (%s,%s,%s,%s,%s)", param=[(1, '123'),(2,'345')]
    """
    query="insert into purchase (item_name,date,quantity,price,store) values (%s,%s,%s,%s,%s)"
    param=[]
    result={"param":"","row":0}

    if res['bg']:
            param=('bg',res['p_date'],res['bg'],'0',res['store'])
            print(param)
            row=1
            result={"param":param,"row":row}
    return result

# 接收POST请求数据
def purchase(request):
    ctx={}
    if request.POST:
        ctx=insert(request.POST)
    return render(request, "purchase_form.html", ctx)
