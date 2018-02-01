package pl.joanna.dto;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class InvestigationDTO {

	public static Collection<String> activity() {
		List<String> activity = new ArrayList<>();
		activity.add("bardzo aktywny(Codzienne intensywne ćwiczenia + praca fizyczna przez wiekszą cześć dnia)");
		activity.add("aktywny(Codzienne intensywne ćwiczenia + praca na nogach)");
		activity.add("średni 1.1 - 1.2 (brak ćwiczen + praca siedząca)");
		activity.add("niski");
		return activity;
	}
}
