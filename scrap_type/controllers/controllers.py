# -*- coding: utf-8 -*-
from odoo import http

# class ScrapType(http.Controller):
#     @http.route('/scrap_type/scrap_type/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/scrap_type/scrap_type/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('scrap_type.listing', {
#             'root': '/scrap_type/scrap_type',
#             'objects': http.request.env['scrap_type.scrap_type'].search([]),
#         })

#     @http.route('/scrap_type/scrap_type/objects/<model("scrap_type.scrap_type"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('scrap_type.object', {
#             'object': obj
#         })