# -*- coding: utf-8 -*-
{
    'name': "Scrap Type",

    'summary': """ Store Scrap management""",

    'description': """
Scrap type is a module to manage Scrap    """,

    'author': "Qwexer",
    'website': "http://www.qwexer.com",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/master/odoo/addons/base/module/module_data.xml
    # for the full list
    'category': 'Test',
    'version': '0.1',

    # any module necessary for this one to work correctly
    'depends': ['base', 'stock'],
    'price': 99, 
    'currency': 'EUR',

    # always loaded
    'data': [
        'views/views.xml',
        'views/templates.xml',
        'security/ir.model.access.csv',
    ],
    # only loaded in demonstration mode
    'demo': [
        'demo/demo.xml',
    ],
}
