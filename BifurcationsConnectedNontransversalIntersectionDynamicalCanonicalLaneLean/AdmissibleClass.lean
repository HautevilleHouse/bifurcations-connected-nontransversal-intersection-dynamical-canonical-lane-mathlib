import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BifurcationAdmittedObject where
  space : BifurcationSpace
  connectedNontransversalIntersection : Prop
  bifurcationParameterSpace : Type
  parameterTopology : TopologicalSpace bifurcationParameterSpace
  parameterDependence : Prop
  conclusion : parameterDependence

structure BifurcationEndgameState where
  object : BifurcationAdmittedObject

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.parameterDependence

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse