import .AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure NontransversalIntersectionPackage (A : BifurcationAdmittedObject) where
  intersectionManifold : Type u
  manifoldTopology : TopologicalSpace intersectionManifold
  branchSet : Set intersectionManifold
  tangencyCondition : Prop
  connectedness : Prop

structure NontransversalIntersectionEvidence {A : BifurcationAdmittedObject} (P : NontransversalIntersectionPackage A) where
  branchSetClosed : P.branchSet
  tangencyConditionClosed : P.tangencyCondition
  connectednessClosed : P.connectedness

def NontransversalIntersectionClosed {A : BifurcationAdmittedObject} (P : NontransversalIntersectionPackage A) : Prop :=
  P.branchSet ∧ P.tangencyCondition ∧ P.connectedness

theorem nontransversal_intersection_closed_from_evidence {A : BifurcationAdmittedObject} (P : NontransversalIntersectionPackage A) (E : NontransversalIntersectionEvidence P) : NontransversalIntersectionClosed P :=
  And.intro E.branchSetClosed (And.intro E.tangencyConditionClosed E.connectednessClosed)

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse