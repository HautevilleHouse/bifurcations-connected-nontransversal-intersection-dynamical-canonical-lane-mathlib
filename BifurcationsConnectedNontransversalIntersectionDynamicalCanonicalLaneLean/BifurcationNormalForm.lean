import canonicalLaneMathlib.AdmissibleClass
import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.NontransversalCycleClosure

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationNormalFormPackage {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} {s : S}
    {C : NontransversalCyclePackage s} (c : C) where
  unfoldingMap : Type u
  parameterFamily : Type v
  bifurcationDiagram : Prop
  codimension : Nat

structure BifurcationNormalFormEvidence {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} {s : S}
    {C : NontransversalCyclePackage s} {c : C}
    (N : BifurcationNormalFormPackage c) where
  unfoldingMapDefined : True
  bifurcationDiagramClosed : N.bifurcationDiagram
  codimensionClosed : N.codimension = 1

def BifurcationNormalFormClosed {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} {s : S}
    {C : NontransversalCyclePackage s} {c : C}
    (N : BifurcationNormalFormPackage c) : Prop :=
  N.bifurcationDiagram ∧ N.codimension = 1

theorem bifurcation_normal_form_closed_from_evidence
    {H : HeteroclinicIntersectionPackage} {h : H}
    {M : MelnikovDistancePackage h} {m : M}
    {S : ShilnikovBifurcationPackage m} {s : S}
    {C : NontransversalCyclePackage s} {c : C}
    (N : BifurcationNormalFormPackage c) (E : BifurcationNormalFormEvidence N) :
    BifurcationNormalFormClosed N := by
  exact And.intro E.bifurcationDiagramClosed E.codimensionClosed

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
