from django.http import HttpResponseBadRequest
import functools
from django.shortcuts import redirect
from django.http import HttpResponseBadRequest


def ajax_required(f):
    def wrap(request, *args, **kwargs):
        if not request.is_ajax():
            return HttpResponseBadRequest()

        return f(request, *args, **kwargs)

    wrap.__doc__ = f.__doc__
    wrap.__name__ = f.__name__
    return wrap

def xhr_request_only(view_func):
    """
    this decorators ensures that the view func accepts only 
    XML HTTP Request i.e request done via fetch or ajax
    """
    @functools.wraps(view_func)
    def wrapper(request, *args, **kwargs):
        if request.headers.get('x-requested-with') == 'XMLHttpRequest':
            return view_func(request, *args, **kwargs)
        print("Can't Process this Request")
        return HttpResponseBadRequest("Can't Process this Request")
    return wrapper


    # CREATE USER api_server WITH PASSWORD '~,bxs!v9r^x*Ak)';
    # CREATE DATABASE _7saba;
    # ALTER ROLE api_server SET client_encoding TO 'utf8';
    # ALTER ROLE api_server SET default_transaction_isolation TO 'read committed';
    # ALTER ROLE api_server SET timezone TO 'UTC';
    # GRANT ALL PRIVILEGES ON DATABASE _7saba TO api_server;