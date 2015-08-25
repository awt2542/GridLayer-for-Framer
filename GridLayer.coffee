class module.exports extends Layer
	constructor: (opt={})->
		sizeTemplate = opt.layers[0]
		opt.backgroundColor ?= ''
		opt.margin ?= 10
		opt.marginRow ?= opt.margin
		opt.marginColumn ?= opt.margin
		opt.width ?= (sizeTemplate.width+opt.marginColumn)*opt.columns-opt.marginColumn
		opt.height ?= (sizeTemplate.height+opt.marginRow)*opt.rows-opt.marginRow
		opt.destroyRemaining ?= true

		super opt
	
		totalIndex = 0

		for rowIndex in [0...opt.rows]
			for colIndex in [0...opt.columns]
				if opt.layers[totalIndex]?
					cell = opt.layers[totalIndex]
					cell.superLayer = @
					cell.x = colIndex * (cell.width + opt.marginColumn)
					cell.y = rowIndex * (cell.height + opt.marginRow)
					++totalIndex
		if opt.destroyRemaining		
			for layer in opt.layers
				layer.destroy() if layer.superLayer isnt @
