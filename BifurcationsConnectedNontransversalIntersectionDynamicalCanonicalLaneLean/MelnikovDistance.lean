import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.HeteroclinicIntersection

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure MelnikovDistancePackage {H : HeteroclinicIntersectionPackage} (h : H) where
  melnikovFunction : Type u
  parameterDomain : Type v
  simpleZero : Prop
  transversalCrossSection : Prop

structure MelnikovDistanceEvidence {H : HeteroclinicIntersectionPackage} {h : H}
    (M : MelnikovDistancePackage h) where
  melnikovFunctionDefined : True
  simpleZeroClosed : M.simpleZero
  transversalCrossSectionClosed : M.transversalCrossSection

def MelnikovDistanceClosed {H : HeteroclinicIntersectionPackage} {h : H}
    (M : MelnikovDistancePackage h) : Prop :=
  M.simpleZero ∧ M.transversalCrossSection

theorem melnikov_distance_closed_from_evidence
    {H : HeteroclinicIntersectionPackage} {h : H}
    (M : MelnikovDistancePackage h) (E : MelnikovDistanceEvidence M) :
    MelnikovDistanceClosed M := by
  exact And.intro E.simpleZeroClosed E.transversalCrossSectionClosed

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
