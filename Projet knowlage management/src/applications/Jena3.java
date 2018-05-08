package applications;

import tools.JenaEngine;

import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.rdf.model.Property;
import com.hp.hpl.jena.rdf.model.ResIterator;
import com.hp.hpl.jena.rdf.model.Selector;
import com.hp.hpl.jena.rdf.model.StmtIterator;

public class Jena3 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String NS = "";
		// lire le model a partir d'une ontologie
		Model model = JenaEngine.readModel("data/movie.owl");
		if (model != null) {
			NS = model.getNsPrefixURI("");

			Model owlInferencedModel = JenaEngine.readInferencedModelFromRuleFile(model, "data/owlrules.txt");
			Model inferedModel = JenaEngine.readInferencedModelFromRuleFile(owlInferencedModel, "data/rules.txt");

			Property p = model.getProperty(NS + "isActorOf");
			ResIterator iter = model.listResourcesWithProperty(p);

			if(iter.hasNext()){
				System.out.println(iter.next().toString());
			}
			
			//System.out.println(JenaEngine.getValueOfDataTypeProperty(inferedModel, NS, "Rob", "age"));
			//System.out.println(JenaEngine.getValueOfObjectProperty(inferedModel, NS, "Rob", "isMarriedWith"));
		} else {
			System.out.println("Error when reading model from ontology");
		}
	}

}
