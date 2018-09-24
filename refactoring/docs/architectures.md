## Controller
### Case: Legacy(?) Controller
```
# inboxes_controller.rb

class InboxesController < ApplicationController
  def index
  end

  ...

  def spammed
  end

  ...

end
```

### Case: DHH Controller
```
# inboxes_controller.rb

class InboxesController < ApplicationController
  def index
  end
end
```
```
# inboxes/spams_controller.rb

class Inboxes::SpamsController < ApplicationController
  def index
  end
end
```
