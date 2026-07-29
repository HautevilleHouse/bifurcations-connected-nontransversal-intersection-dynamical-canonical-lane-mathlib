import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.BifurcationObjects

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationAnalysisPackage (A : AdmissibleClass) where
  phaseSpaceAnalysis : Prop
  intersectionClassification : Prop
  connectedComponentAnalysis : Prop
  bifurcationDiagramConstruction : Prop
  stabilityChangeProof : Prop

structure BifurcationAnalysisEvidence (A : AdmissibleClass) (P : BifurcationAnalysisPackage A) where
  phaseSpaceAnalysisClosed : P.phaseSpaceAnalysis
  intersectionClassificationClosed : P.intersectionClassification
  connectedComponentAnalysisClosed : P.connectedComponentAnalysis
  bifurcationDiagramConstructionClosed : P.bifurcationDiagramConstruction
  stabilityChangeProofClosed : P.stabilityChangeProof

def BifurcationAnalysisClosed (A : AdmissibleClass) (P : BifurcationAnalysisPackage A) : Prop :=
  P.phaseSpaceAnalysis ∧ P.intersectionClassification ∧
  P.connectedComponentAnalysis ∧ P.bifurcationDiagramConstruction ∧
  P.stabilityChangeProof

theorem bifurcation_analysis_closed_from_evidence (A : AdmissibleClass) (P : BifurcationAnalysisPackage A)
    (E : BifurcationAnalysisEvidence A P) : BifurcationAnalysisClosed A P := by
  exact And.intro E.phaseSpaceAnalysisClosed
    (And.intro E.intersectionClassificationClosed
      (And.intro E.connectedComponentAnalysisClosed
        (And.intro E.bifurcationDiagramConstructionClosed
          E.stabilityChangeProofClosed)))

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
