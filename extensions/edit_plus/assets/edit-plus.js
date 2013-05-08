(function($) {
	// Function will be placed here by highlighter module.
	window.TheEditor = {'highlighter': null};

	var d = document;

	var $text_area, text_area;

	var editor = {},
		editor_parts = [
		'outer/div',
		'text_panel/div',
		'back_panel/div',
		'selection/span'
	]

	var last_key_code;
	var gutter_width = 35;
	var x_margin = 3,
		y_margin = 2;

	/*
	 * Set editor up..
	 */

	$().ready(function() {
		if(window.getSelection() == undefined) return;
		if(window.TheEditor.highlighter == null) return;

		$text_area = $('textarea.code:first');
		$text_area.parent().css('display', 'inline');
		$text_area
			.attr('id', 'text-area')
			.addClass('hidden')
			.attr('columns', '')
			.scrollTop(0)
			.keydown(function(event) {
				var key = event.which;
				last_key_code = key;
				//alert(key);
				if(([8, 9, 13, 32].indexOf(key) != -1) || (key >= 48 && key <= 90) || (key >= 163 && key <= 222)){
					setTimeout(updateEditor, 2);
				}
				else if(key >= 33 && key <= 40) {
					setTimeout(positionEditorCaret, 1);
				}
			})
			.on('cut paste', function(event) {
				setTimeout(updateEditor, 1);
			});
			
		text_area = $text_area[0];

		$.each(editor_parts, function(i, part) {
			var p = part.split("/");
			editor[p[0]] = d.createElement(p[1]);
		});

		$(editor.outer)
			.attr('id', 'code-editor')
			.html('<div></div>')
			.insertAfter($text_area.parent())
			.mousedown(function(event) {
				if(!($(editor.outer).hasClass('focus'))) {
					$(editor.outer).addClass('focus');
					$(editor.selection).text(" ").css('visibility', 'visible');
					text_area.focus();
					positionEditorCaret();
				}
				event.preventDefault();
				event.stopPropagation();
			})
			.mouseup(function(event) {
				event.stopPropagation();
			});

		$(editor.text_panel)
			.attr('id', 'editor-text-panel')
			.addClass('code')
			.mousedown(function(event) {
				if(!($(editor.outer).hasClass('focus'))) {
					$(editor.outer).addClass('focus');
					$(editor.selection).text(" ").css('visibility', 'visible');
				}
				event.stopPropagation();
			})
			.mouseup(function(event) {
				var s = window.getSelection().getRangeAt(0);
				text_area.focus();
				text_area.selectionStart = (createRange(editor.text_panel, 0, s.startContainer, s.startOffset)).toString().length;
				text_area.selectionEnd = (createRange(editor.text_panel, 0, s.endContainer, s.endOffset)).toString().length;
				positionEditorCaret();
			});

		$(editor.back_panel)
			.attr('id', 'editor-back-panel')
			.addClass('code');

		$(editor.outer).children().first().append(editor.text_panel).append(editor.back_panel);

		$('body')
			.mousedown(function(event) {
				if($(editor.outer).hasClass('focus')) {
					$(editor.outer).removeClass('focus');
					if($(editor.selection).hasClass('caret')) {
						$(editor.selection).css('visibility', 'hidden');
					}
				}
			})
			.mouseup(function(event) {
				if($(editor.outer).hasClass('focus')) {
					$(editor.outer).removeClass('focus');
					if($(editor.selection).hasClass('caret')) {
						$(editor.selection).css('visibility', 'hidden');
					}
					window.getSelection().removeAllRanges();
				}
			});

		textToEditor();
	});

	/*
	 * Create range.
	 */

	function createRange(start_node, start_offset, end_node, end_offset) {
		var range = d.createRange();
		range.setStart(start_node, start_offset);
		range.setEnd(end_node, end_offset);
		return range;
	}

	/*
	 * Write updated content to editor
	 */

	function updateEditor() {
		textToEditor();
		positionEditorCaret();
	}

	/*
	 * Fill editor with highlighted text..
	 */

 	function textToEditor() {
		$(editor.text_panel)
			.html("")
			.append(window.TheEditor.highlighter(text_area.value));
		$(editor.text_panel)
			.css('minWidth', (editor.outer.clientWidth - 44) + 'px')
			.css('minHeight', (editor.outer.clientHeight - 4) + 'px');
		$(editor.back_panel)
			.css('minWidth', (editor.outer.clientWidth - 44) + 'px');
	}

	/*
	 * Caret.
	 */
	function positionEditorCaret() {
		var t = text_area.value.slice(0, text_area.selectionStart);
		var selected_text = text_area.value.slice(text_area.selectionStart, text_area.selectionEnd);
		if(selected_text == "") {
			editor.selection.className = 'caret blink';
			$(editor.selection).text(" ");
		}
		else {
			editor.selection.className = 'selection';
			$(editor.selection).text(selected_text);
		}
		var output = d.createDocumentFragment();
		output.appendChild(d.createTextNode(t));
		output.appendChild(editor.selection);
		$(editor.back_panel).html("").append(output);

		var pos = $(editor.selection).position();
		if(editor.outer.scrollTop > pos.top) editor.outer.scrollTop = pos.top - y_margin;
		var n = pos.top + editor.selection.clientHeight - editor.outer.clientHeight;
		if(n > editor.outer.scrollTop) editor.outer.scrollTop = n + y_margin;

		n = gutter_width + pos.left;
		if(editor.outer.scrollLeft > n) editor.outer.scrollLeft = n - x_margin;
		n += editor.selection.clientWidth - editor.outer.clientWidth;
		if(n > editor.outer.scrollLeft) editor.outer.scrollLeft = n + x_margin;
	}

})(jQuery.noConflict());