import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.BifurcationCore

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

def ConstrainedBifurcationClosure (A : BifurcationAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bifurcation_endgame (A : BifurcationAdmissibleClass) :
    ConstrainedBifurcationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse