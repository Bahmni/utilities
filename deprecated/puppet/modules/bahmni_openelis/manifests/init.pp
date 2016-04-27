class bahmni_openelis {
	if ($bahmni_openelis_required == "true") {
		require openelis
	} else {
		notice ("Not installing OpenElis. ")
	}
}