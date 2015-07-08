$(function(){
	function validate(str){
		if($.isNumeric(str)){
			return parseFloat(str);
		}
		return 0;
	}

	function calculate(){
		var p1 = validate($('#price1-id').val()),
			p2 = validate($('#price2-id').val()),
			count = validate($('#count-id').val()),
			price_win = validate($('#price-win-id').val()),
			quant_win = validate($('#quant-win-id').val()),
			price_lin = validate($('#price-lin-id').val()),
			quant_lin = validate($('#quant-lin-id').val()),
			price_1 = validate($('#price-1-id').val()),
			alloc_1 = validate($('#alloc-1-id').val()),

			price_2 = validate($('#price-2-id').val()),
			alloc_2 = validate($('#alloc-2-id').val()),

			price_3 = validate($('#price-3-id').val()),
			alloc_3 = validate($('#alloc-3-id').val()),
			subtotal_1 = 0;
			subtotal_2 = 0;
			subtotal_3 = 0;

			total_1 = 0;
			total_2 = 0;
			total_3 = 0;
			sum = 0;
			sum_win = 0;
			sum_lin = 0;
			total_all = 0;

		if(count == 1){
			sum = p1;
			$('#result-id').val(sum);
		} else {
			sum = p1 + (p2 * (count));
			$('#result-id').val(sum);
		}

		if(count == 0){
			sum = 0;
			$("#result-id").val(sum);
		}
		

		sum_win = price_win * quant_win * 6;
		$('#total-win-id').val(sum_win);

		sum_lin = price_lin * quant_lin * 2;
		$('#total-lin-id').val(sum_lin);

		total_1 = price_1 * alloc_1;
		$('#total-1-id').val(total_1);

		total_2 = (price_2 * alloc_2) * 4;
		$('#total-2-id').val(total_2);

		total_3 = (price_3 * alloc_3) / 3;
		$('#total-3-id').val(total_3);

		subtotal_1 = (sum_win + sum_lin).toFixed(2);
		$('#subtotal_1').val(subtotal_1);

		subtotal_2 = (sum).toFixed(2);
		$('#subtotal_2').val(subtotal_2);

		subtotal_3 = (total_1 + total_2 + total_3).toFixed(2);
		$('#subtotal_3').val(subtotal_3);

		total_all = (sum + sum_win + sum_lin + total_1 + total_2 + total_3).toFixed(2);
		$('#total-all-id').val(total_all);
	}

	$('span.plus').bind('click', function(){
		var input = $(this).parent().find('input'),
		sum = parseFloat(input.val());
		input.val(sum+1);
		calculate();	
	});

	$('span.minus').bind('click', function(){
		var input = $(this).parent().find('input'),
		sum = parseFloat(input.val());
		if(sum > 0){
			input.val(sum-1);
			calculate();	
		}
	});

	$(".month-cost-table input").bind("keyup", calculate);
	calculate();

	//$('span.plus').click();
});

