# -*- coding: utf-8 -*-
 
from django.shortcuts import render
from django.views.decorators import csrf
from mysql.sqlConnect import *
 
def insert(res):
    """
    """
    #初始化
    query="insert into consume (item_name,date,quantity) values (%s,%s,%s)"
    param=[]
    result={"param":"","row":0}
    row=0
    #从网页获得数据
    if res['bg']: param.append(('bg',res['p_date'],res['bg']))
    if res['gn']: param.append(('gn',res['p_date'],res['gn']))
    if res['hm']: param.append(('hm',res['p_date'],res['hm']))
    if res['hty']: param.append(('hty',res['p_date'],res['hty']))
    if res['mt']: param.append(('mt',res['p_date'],res['mt']))
    if res['nf']: param.append(('nf',res['p_date'],res['nf']))
    if res['pf']: param.append(('pf',res['p_date'],res['pf']))
    if res['day']: param.append(('day',res['p_date'],res['day']))
    if res['sgm']: param.append(('sgm',res['p_date'],res['sgm']))
    if res['night']: param.append(('night',res['p_date'],res['night']))
    if res['ydl']: param.append(('ydl',res['p_date'],res['ydl']))
    if res['mf']: param.append(('mf',res['p_date'],res['mf']))
            #print(param)
    #增加到数据库
    if len(param)>0:
        sqlConnection()
        row=sqlInsert(query,param)
        sqlDisconnection()
              
    #记录结果        
    result={"param":param,"row":row}
    return result

# 接收POST请求数据
def consume(request):
    ctx={}
    if request.POST:
        ctx=insert(request.POST)
    return render(request, "consume_form.html", ctx)
