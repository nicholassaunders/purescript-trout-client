module Client where

import Prelude hiding (div)
import Data.Either (Either(..))
import Data.Foldable (foldMap)
import Effect (Effect)
import Effect.Aff (launchAff)
import Effect.Class (liftEffect)
import JQuery (body, setHtml)
import Site (site)
import Text.Smolder.Renderer.String (render)
import Type.Trout.Client (asClients, printError)
import Type.Trout.ContentType.HTML (encodeHTML)

main :: Effect Unit
main = do
  b <- body
  void $ launchAff do
    let {tasks} = asClients site
    tasks."GET" >>= case _ of
      Left error -> liftEffect (setHtml (printError error) b)
      Right ts -> liftEffect (setHtml (foldMap (render <<< encodeHTML) ts) b)
