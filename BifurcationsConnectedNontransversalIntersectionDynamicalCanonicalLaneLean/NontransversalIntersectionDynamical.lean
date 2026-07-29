import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.BifurcationCore

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure NontransversalIntersectionPackage (A : BifurcationAdmissibleClass) where
  intersectionClassified : Prop
  tangencyOrder : Nat
  persistenceUnderPerturbation : Prop
  dynamicalConsequences : Prop

structure NontransversalIntersectionEvidence {A : BifurcationAdmissibleClass}
    (P : NontransversalIntersectionPackage A) where
  intersectionClassifiedClosed : P.intersectionClassified
  tangencyOrderClosed : P.tangencyOrder > 0
  persistenceUnderPerturbationClosed : P.persistenceUnderPerturbation
  dynamicalConsequencesClosed : P.dynamicalConsequences

def NontransversalIntersectionClosed {A : BifurcationAdmissibleClass}
    (P : NontransversalIntersectionPackage A) : Prop :=
  P.intersectionClassified ∧ P.tangencyOrder > 0 ∧ P.persistenceUnderPerturbation ∧ P.dynamicalConsequences

theorem nontransversal_intersection_closed_from_evidence
    {A : BifurcationAdmissibleClass} (P : NontransversalIntersectionPackage A)
    (E : NontransversalIntersectionEvidence P) : NontransversalIntersectionClosed P := by
  exact And.intro E.intersectionClassifiedClosed
    (And.intro E.tangencyOrderClosed
      (And.intro E.persistenceUnderPerturbationClosed E.dynamicalConsequencesClosed))

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse