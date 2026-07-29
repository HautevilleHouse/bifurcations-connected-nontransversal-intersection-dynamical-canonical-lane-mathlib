import canonicalLaneMathlib.AdmissibleClass

/-!
# Bifurcation Analysis Package
-/

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationAnalysisPackage where
  bifurcationDiagram : Type
  criticalSet : Type
  normalForm : String
  codimension : Nat
  unfoldingParameters : Prop
  bifurcationType : String

structure BifurcationAnalysisEvidence (P : BifurcationAnalysisPackage) where
  bifurcationDiagramClosed : P.bifurcationDiagram
  criticalSetClosed : P.criticalSet
  normalFormClosed : P.normalForm
  codimensionClosed : P.codimension
  unfoldingParametersClosed : P.unfoldingParameters
  bifurcationTypeClosed : P.bifurcationType

def BifurcationAnalysisClosed (P : BifurcationAnalysisPackage) : Prop :=
  P.bifurcationDiagram ∧ P.criticalSet ∧ P.normalForm ∧
  P.codimension ∧ P.unfoldingParameters ∧ P.bifurcationType

theorem bifurcation_analysis_closed_from_evidence (P : BifurcationAnalysisPackage)
    (E : BifurcationAnalysisEvidence P) : BifurcationAnalysisClosed P := by
  exact And.intro E.bifurcationDiagramClosed
    (And.intro E.criticalSetClosed
      (And.intro E.normalFormClosed
        (And.intro E.codimensionClosed
          (And.intro E.unfoldingParametersClosed E.bifurcationTypeClosed))))

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
