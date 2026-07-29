import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.ShilnikovBifurcation

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure NontransversalCyclePackage {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} (s : S) where
  cycleFormed : Prop
  cycleIsConnected : Prop
  cycleIntersectionNontransversal : Prop

structure NontransversalCycleEvidence {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} {s : S}
    (C : NontransversalCyclePackage s) where
  cycleFormedClosed : C.cycleFormed
  cycleIsConnectedClosed : C.cycleIsConnected
  cycleIntersectionNontransversalClosed : C.cycleIntersectionNontransversal

def NontransversalCycleClosed {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} {s : S}
    (C : NontransversalCyclePackage s) : Prop :=
  C.cycleFormed ∧ C.cycleIsConnected ∧ C.cycleIntersectionNontransversal

theorem nontransversal_cycle_closed_from_evidence
    {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} {s : S}
    (C : NontransversalCyclePackage s) (E : NontransversalCycleEvidence C) :
    NontransversalCycleClosed C := by
  exact And.intro E.cycleFormedClosed
    (And.intro E.cycleIsConnectedClosed E.cycleIntersectionNontransversalClosed)

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
