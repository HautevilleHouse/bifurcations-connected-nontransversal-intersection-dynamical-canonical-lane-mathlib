import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.BifurcationAnalysisPackage

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationClosureEvidence (A : AdmissibleClass) where
  analysisPackage : BifurcationAnalysisPackage A
  analysisEvidence : BifurcationAnalysisEvidence A analysisPackage
  bridgeClosedTerm : bridgeClosed A
  gateClosedTerm : gateClosed A

def BifurcationClosureClosed (A : AdmissibleClass) : Prop :=
  BifurcationAnalysisClosed A (BifurcationClosureEvidence.analysisPackage A) ∧
  bridgeClosed A ∧ gateClosed A

theorem bifurcation_closure_closed_from_evidence (A : AdmissibleClass)
    (E : BifurcationClosureEvidence A) : BifurcationClosureClosed A := by
  have hAna : BifurcationAnalysisClosed A E.analysisPackage :=
    bifurcation_analysis_closed_from_evidence A E.analysisPackage E.analysisEvidence
  exact And.intro hAna (And.intro E.bridgeClosedTerm E.gateClosedTerm)

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
