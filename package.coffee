pack= Packages.register
  name: 'keepassx'
  description: 'Commands commands to use KeePassX'

pack.commands
  'search-keepass':
    spoken:'searchpass'
    grammarType: 'oneArgument'
    description: 'search an entry into your database'
    action: ->
      @applescript """
      tell application "Finder"
        activate
        open application file "KeePassX" of folder "Applications" of startup disk
      end tell
      """, false
      @key 'F', 'command'
  'get-username':
    spoken:'copuser'
    grammarType: 'oneArgument'
    description: 'copy username to clipboard'
    action: ->
      @key 'B', 'command'
  'get-password':
    spoken:'copword'
    grammarType: 'oneArgument'
    description: 'copy password to clipboard'
    action: ->
      @key 'C', 'command'


Settings.vocabulary =
vocabulary: [
  ""
  ""
]

Settings.vocabulary =
 vocabularyAlternate:
  " ": ""
