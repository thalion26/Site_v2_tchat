$('.toggle').click(function()
{
	$(this).next().toggle();
	if ($(this).val() == 'Voir la vidéo') {
		$(this).attr('value', 'Masquer la vidéo');
	}
	else{
		$(this).attr('value', 'Voir la vidéo');
	}
});