from django.conf.urls import url
from data import view,purchase,consume
 
urlpatterns = [
    url(r'^$', view.home), #http://127.0.0.1:8000

    url(r'^purchase_page$', purchase.purchase_form), #http://127.0.0.1:8000/purchase_page
    url(r'^purchase$', purchase.purchase),

    url(r'^consume_page$', consume.consume),##http://127.0.0.1:8000/consume_page
]
