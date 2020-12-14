package org.ehrbase.fhirbridge.ehr.opt.geccodiagnosecomposition.definition;

import com.nedap.archie.rm.datastructures.Cluster;
import com.nedap.archie.rm.generic.PartyProxy;
import org.ehrbase.client.aql.containment.Containment;
import org.ehrbase.client.aql.field.AqlFieldImp;
import org.ehrbase.client.aql.field.ListAqlFieldImp;
import org.ehrbase.client.aql.field.ListSelectAqlField;
import org.ehrbase.client.aql.field.SelectAqlField;
import org.ehrbase.fhirbridge.ehr.opt.shareddefinition.Language;

public class UnbekannteDiagnoseEvaluationContainment extends Containment {
  public SelectAqlField<UnbekannteDiagnoseEvaluation> UNBEKANNTE_DIAGNOSE_EVALUATION = new AqlFieldImp<UnbekannteDiagnoseEvaluation>(UnbekannteDiagnoseEvaluation.class, "", "UnbekannteDiagnoseEvaluation", UnbekannteDiagnoseEvaluation.class, this);

  public SelectAqlField<AussageUberDieFehlendeInformationDefiningcode> AUSSAGE_UBER_DIE_FEHLENDE_INFORMATION_DEFININGCODE = new AqlFieldImp<AussageUberDieFehlendeInformationDefiningcode>(UnbekannteDiagnoseEvaluation.class, "/data[at0001]/items[at0005]/value|defining_code", "aussageUberDieFehlendeInformationDefiningcode", AussageUberDieFehlendeInformationDefiningcode.class, this);

  public SelectAqlField<PartyProxy> SUBJECT = new AqlFieldImp<PartyProxy>(UnbekannteDiagnoseEvaluation.class, "/subject", "subject", PartyProxy.class, this);

  public SelectAqlField<ProblemDiagnoseDefiningcode> UNBEKANNTE_DIAGNOSE_DEFININGCODE = new AqlFieldImp<ProblemDiagnoseDefiningcode>(UnbekannteDiagnoseEvaluation.class, "/data[at0001]/items[at0002]/value|defining_code", "unbekannteDiagnoseDefiningcode", ProblemDiagnoseDefiningcode.class, this);

  public ListSelectAqlField<Cluster> ERWEITERUNG = new ListAqlFieldImp<Cluster>(UnbekannteDiagnoseEvaluation.class, "/protocol[at0003]/items[at0006]", "erweiterung", Cluster.class, this);

  public SelectAqlField<Language> LANGUAGE = new AqlFieldImp<Language>(UnbekannteDiagnoseEvaluation.class, "/language", "language", Language.class, this);

  private UnbekannteDiagnoseEvaluationContainment() {
    super("openEHR-EHR-EVALUATION.absence.v2");
  }

  public static UnbekannteDiagnoseEvaluationContainment getInstance() {
    return new UnbekannteDiagnoseEvaluationContainment();
  }
}
