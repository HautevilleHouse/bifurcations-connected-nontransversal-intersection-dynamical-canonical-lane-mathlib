import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure HeteroclinicIntersectionPackage where
  equilibriumA : Type u
  equilibriumB : Type v
  stableManifoldA : Type w
  unstableManifoldB : Type x
  intersectionDimension : Nat
  transversal : Prop
  connectedComponent : Prop

structure HeteroclinicIntersectionEvidence (H : HeteroclinicIntersectionPackage) where
  intersectionDimensionClosed : H.intersectionDimension = 1
  transversalClosed : ¬ H.transversal
  connectedComponentClosed : H.connectedComponent

def HeteroclinicIntersectionClosed (H : HeteroclinicIntersectionPackage) : Prop :=
  H.intersectionDimension = 1 ∧ ¬ H.transversal ∧ H.connectedComponent

theorem heteroclinic_intersection_closed_from_evidence
    (H : HeteroclinicIntersectionPackage) (E : HeteroclinicIntersectionEvidence H) :
    HeteroclinicIntersectionClosed H := by
  exact And.intro E.intersectionDimensionClosed
    (And.intro E.transversalClosed E.connectedComponentClosed)

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
