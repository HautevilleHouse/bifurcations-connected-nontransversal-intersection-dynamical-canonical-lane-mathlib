import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.MelnikovDistance

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure ShilnikovBifurcationPackage {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} (m : M) where
  eigenvalueCondition : Prop
  returnsMapChaotic : Prop
  homoclinicOrbitExists : Prop

structure ShilnikovBifurcationEvidence {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    (S : ShilnikovBifurcationPackage m) where
  eigenvalueConditionClosed : S.eigenvalueCondition
  returnsMapChaoticClosed : S.returnsMapChaotic
  homoclinicOrbitExistsClosed : S.homoclinicOrbitExists

def ShilnikovBifurcationClosed {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    (S : ShilnikovBifurcationPackage m) : Prop :=
  S.eigenvalueCondition ∧ S.returnsMapChaotic ∧ S.homoclinicOrbitExists

theorem shilnikov_bifurcation_closed_from_evidence
    {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    (S : ShilnikovBifurcationPackage m) (E : ShilnikovBifurcationEvidence S) :
    ShilnikovBifurcationClosed S := by
  exact And.intro E.eigenvalueConditionClosed
    (And.intro E.returnsMapChaoticClosed E.homoclinicOrbitExistsClosed)

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
