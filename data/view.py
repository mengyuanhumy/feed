from django.shortcuts import render
 
def home(request):
    context = {}
    context['welcome'] = '采购供给系统'
    return render(request, 'homepage.html', context)
