###

###
(
	jQuery.jShortcut = {}
	jQuery.jShortcut.Ctrl = 17;
	jQuery.jShortcut.Alt = 18;
	
	jQuery.fn.jShortcut = (char,callback=false,spe=false) ->
		isSpe = false;

		if callback is false
		 	callback = ->
		if spe != false
			jQuery(this).on("keydown",
				(e) ->
					if e.which == spe || e.keyCode == spe
						isSpe = true;

			)

		jQuery(this).on("keyup",
			(e) ->
				if e.which == spe || e.keyCode == spe
					isSpe = false;
				if spe != false
					if isSpe && (String.fromCharCode(e.which).toLowerCase() is char.toLowerCase() || String.fromCharCode(e.keyCode).toLowerCase() is char.toLowerCase()) then callback(null)
					false
				else
					if String.fromCharCode(e.which).toLowerCase() is char.toLowerCase() || String.fromCharCode(e.keyCode).toLowerCase() is char.toLowerCase() then callback(null)
					false
			)

		_speClick = (e) ->
			

		jQuery(this)
)
