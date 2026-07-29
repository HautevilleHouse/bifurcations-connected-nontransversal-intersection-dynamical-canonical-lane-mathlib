import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure DynamicalSystem (X : BifurcationSpace) where
  flow : X.carrier → X.carrier
  smoothness : Prop
  parameterDependence : Prop

structure VectorField (X : BifurcationSpace) where
  map : X.carrier → X.carrier
  smoothness : Prop

structure BifurcationPoint (X : BifurcationSpace) where
  equilibrium : X.carrier
  parameter : Type
  stabilityChange : Prop

structure EquilibriaClosed (X : BifurcationSpace) (D : DynamicalSystem X) : Prop where
  equilibriumSet : Set X.carrier
  closedness : IsClosed equilibriumSet

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse