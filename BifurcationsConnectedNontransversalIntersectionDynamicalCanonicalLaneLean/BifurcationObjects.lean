import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure PhaseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

dynamicalSystem (X : PhaseSpace) : Type :=
  flow : X.carrier → ℝ → X.carrier

structure NontransversalIntersection (X : PhaseSpace) where
  stableManifold : Set X.carrier
  unstableManifold : Set X.carrier
  intersectionPoint : X.carrier
  nontransversalCondition : Prop

structure BifurcationParameter where
  values : Type
  topology : TopologicalSpace values

structure ConnectedComponent (X : PhaseSpace) where
  points : Set X.carrier
  connected : Prop

structure BifurcationEvidence where
  parameter : BifurcationParameter
  phaseSpace : PhaseSpace
  intersection : NontransversalIntersection phaseSpace
  component : ConnectedComponent phaseSpace
  bifurcationDiagram : Prop
  stabilityChange : Prop

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse
