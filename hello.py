#!/usr/bin/python

def app(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    resp = env['QUERY_STRING'].split('&')
    resp = '\n'.join(resp)
    return iter(resp)
