from django.shortcuts import render
from mysql.sqlConnect import *

def select():
    """查询最新的库存和预估数据
    参数无，返回res
    """
    query="SELECT DISTINCT cn_name, speed, stock, deplete_date,gen_date FROM item JOIN product ON item.name=product.name"
    sqlConnection()
    #先运行mysql内的函数，生成最新的计算数据
    gen=sqlSelect("SELECT item_report()",'')
    if gen[0][0]>0: print("mysql function executes successfully")
    #再查询结果
    res=sqlSelect(query,'')
    sqlDisconnection()

    if res!=0: return res
    else: return 0
    

def home(request):
    context = {}
    context['welcome'] = '采购供给系统'

    context['th']=['名称','消耗速度','剩余库存','预计清空时间','矫正日期']
    context['td']=select()
    return render(request, 'homepage.html', context)
