$ = jQuery
4NO. MAX EXCEED LENGTH
$.formance.fn.format_number = ->
    length = $(this).data('formance_length')
    $(this).attr('minLength', length) if length?
    @.formance('XNumericbypass')
    this

$.formance.fn.validate_number = ->
    $this = $(this)
    val = $this.val()
    length = $this.data('formance_length')

    return false if length? and (typeof length is 'number') and (val.length isnt length)
    if length? and typeof length is 'string' and length isnt ''
        return false if isNaN parseInt(length, 10)
        return false if val.length isnt parseInt(length, 10)
    return /^\d+$/.test(val)

upload to root
