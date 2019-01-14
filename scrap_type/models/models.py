# -*- coding: utf-8 -*-

from odoo import models, fields, api


class ScrapType(models.Model):
    _name = 'scraptype.scraptype'

    name = fields.Char(string="Name", required=True)
    description = fields.Text(string="Description")
    _sql_constraints = [
        ('name_unique',
         'UNIQUE(name)',
         "The scrap type must be unique")
    ]


class scraplist(models.Model):
    _inherit = 'stock.scrap'

    scrap_type = fields.Many2one('scraptype.scraptype', string="Scrap Type", required=True)

    
    def _prepare_move_values(self):
        self.ensure_one()
        return {
            'name': self.scrap_type.name if self.scrap_type else self.name,
            'origin': self.origin or self.picking_id.name,
            'product_id': self.product_id.id,
            'product_uom': self.product_uom_id.id,
            'product_uom_qty': self.scrap_qty,
            'location_id': self.location_id.id,
            'scrapped': True,
            'location_dest_id': self.scrap_location_id.id,
            'restrict_lot_id': self.lot_id.id,
            'restrict_partner_id': self.owner_id.id,
            'picking_id': self.picking_id.id
        }



#    scraptype = fields.Many2one('stock.scrap', ondelete='set null', string="Scrap Type", index=True)

# class scrap_type(models.Model):
#     _name = 'scrap_type.scrap_type'

#     name = fields.Char()
#     value = fields.Integer()
#     value2 = fields.Float(compute="_value_pc", store=True)
#     description = fields.Text()
#
#     @api.depends('value')
#     def _value_pc(self):
#         self.value2 = float(self.value) / 100