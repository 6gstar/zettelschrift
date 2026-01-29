# Zettelschrift

```
# Laplanchean unconscious
1/4/10/1

[[Jean Laplanche]] crafted an hypothesis/redefinition of the [[unconscious|Psychoanalytic unconscious]] by means of a %[[General seduction theory]] that resembles but ultimately goes against Lacan's conception of the unconscious' origin and foundations% @[[General seduction theory]] opposes [[Lacanian subject]]@ by building a well-defined [[etiology|Etiology]] and proposing more clear connections between his etiology and actual [[symptoms as they appear clinically|Unconscious formations]].
In a sense, this means @[[Jean Laplanche]] is a rival of [[Jacques Lacan]]@, albeit one highly indebted to the later.

@is useful for@ [[Testing psychoanalysis]]
@example of@ [[Well-formed psychoanalytic unconscious hypothesis]]
@opposes@ [[Lacanian unconscious]]
@todo [[Notes to be expanded]]
```
<p align="center">Example of Zettelschrift for CommonMark</p>

## Introduction

**Zettelschrift** [_ztsch_] is an agnostic, very small semantic extension protocol for commonly used lightweight markup languages, such as Markdown, Org, and Asciidoc. Its main, overt purpose is to add a small set of helpful but rarely present features for the formats used by many plain-text personal knowledge management systems, while maintaining portability, atomicity, and a balance between readability and expressiveness. It is *not* meant to _replace_ your preferred markup; it can be used unobtrusively within it, degrading gracefully to regular, readable text when no _ztsch_ tool is used for parsing. Agnostic tools shall be provided for parsing, converting, and visualizing documents hosting ```ztsch```.

_This is a very early WIP, and most importantly, an experiment._

### Features

#### Relational links

```
This entire README @has an arbitrary relation with@ [[Another file]]

@[A file](jean-laplanche) has a relation with [Another file](jacques-lacan)@

%Relational links can have sentence- or paragraph-length aliases too% @{:Neorg:} can host {:Zettelschrift:}@

%Zettelschrift does not interfer with host language's syntax% @[[org][Org-mode]] can host [[ztsch]]@

%Predicates can be themselves links% @[[A]] [[refutes]] [[B]]@

```

#### Sequential links (Folgezettel)

```
# Just like many Zettelkasten, you can identify files with numbers and single letters,
1

# and by writing into another file like this, you create a sequential link (that also acts as a identifier)
1/a
```
