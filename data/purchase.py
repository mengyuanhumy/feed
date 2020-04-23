# -*- coding: utf-8 -*-
 
from django.shortcuts import render
from django.views.decorators import csrf
from mysql.sqlConnect import *
 
def insert(res):
    """
    query="insert into purchase (item_name,date,quantity,price,store) values (%s,%s,%s,%s,%s)", param=[(1, '123'),(2,'345')]
    """
    #初始化
    query="insert into purchase (item_name,date,quantity,price,store) values (%s,%s,%s,%s,%s)"
    param=[]
    result={"param":"","row":0}
    row=0
    #从网页获得数据
    if res['bg']: param.append(('bg',res['p_date'],res['bg'],res['bg_p'],res['store']))
    if res['gn']: param.append(('gn',res['p_date'],res['gn'],res['gn_p'],res['store']))
    if res['hm']: param.append(('hm',res['p_date'],res['hm'],res['hm_p'],res['store']))
    if res['hty']: param.append(('hty',res['p_date'],res['hty'],res['hty_p'],res['store']))
    if res['mt']: param.append(('mt',res['p_date'],res['mt'],res['mt_p'],res['store']))
    if res['nf']: param.append(('nf',res['p_date'],res['nf'],res['nf_p'],res['store']))
    if res['pf']: param.append(('pf',res['p_date'],res['pf'],res['pf_p'],res['store']))
    if res['day']: param.append(('day',res['p_date'],res['day'],res['day_p'],res['store']))
    if res['sgm']: param.append(('sgm',res['p_date'],res['sgm'],res['sgm_p'],res['store']))
    if res['night']: param.append(('night',res['p_date'],res['night'],res['night_p'],res['store']))
    if res['ydl']: param.append(('ydl',res['p_date'],res['ydl'],res['ydl_p'],res['store']))
    if res['mf']: param.append(('mf',res['p_date'],res['mf'],res['mf_p'],res['store']))
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
def purchase(request):
    ctx={}
    if request.POST:
        ctx=insert(request.POST)
    return render(request, "purchase_form.html", ctx)
