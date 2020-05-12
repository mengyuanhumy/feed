from django.shortcuts import render

def home(request):
    context = {}
    context['welcome'] = '采购供给系统'
    context['th']=[1,2,3]
    context['td']=['a','b','c']
    return render(request, 'homepage.html', context)
