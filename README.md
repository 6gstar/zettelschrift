# Zettelschrift

```
# Laplanchean unconscious
1/4/10/1

[[Jean Laplanche]] crafted an hypothesis/redefinition of the [[unconscious|Psychoanalytic unconscious]] by means of a %[[General seduction theory]] that resembles but ultimately goes against Lacan's conception of the unconscious' origin and foundations% @[[General seduction theory]] opposes [[Lacanian subject]]@ by building a well-defined [[etiology|Etiology]] and proposing more clear connections between his etiology and actual [[symptoms as they appear clinically|Unconscious formations]].
In a sense, this means @[[Jean Laplanche]] is a rival of [[Jacques Lacan]]@, albeit one highly indebted to the latter.

@is useful for@ [[Testing psychoanalysis]]
@example of@ [[Well-formed psychoanalytic unconscious hypothesis]]
@opposes@ [[Lacanian unconscious]]
@todo [[Notes to be expanded]]
```
<p align="center">Example of Zettelschrift for CommonMark</p>

## Introduction

**Zettelschrift** ```ztsch``` is an agnostic, minimal semantic extension protocol for commonly used lightweight markup languages, such as Markdown, Org, and Asciidoc. Its main, overt purpose is to add a small set of helpful but rarely present features for the formats used by many plain-text personal knowledge management systems, while maintaining portability, atomicity, and a balance between readability and expressiveness. It is *not* meant to _replace_ your preferred markup; it can be used unobtrusively within it, degrading gracefully to regular, readable text when no ```ztsch``` tool is used for parsing. Agnostic tools shall be provided for parsing, converting, and visualizing documents hosting ```ztsch```.

_This is a very early WIP, and most importantly, an experiment._

## Features

### Markup

#### Relational links

```
This entire README @has an arbitrary relation with
[[Another node]]@

@[A node](jean-laplanche) has a relation with [Another node](jacques-lacan)@

%Relational links can have *full sentences* as _aliases_ for writing a relationship in prose too!% @[[Rellink alias]] describes [[Rellink]]@

%Zettelschrift does not implement a syntax for regular links - it parses and uses the host language's own syntax% @[[org][Org-mode]] can host [[ztsch]]@

%Rellinks' predicates can be themselves transformed into nodes, either through ztsch tools or explicitly using the host language's syntax% @[[A]] [[refutes]] [[B]]@

Zettelschrift's tools can also interpret an @[[Entire rellink]] as [[a node]]@. If you create a node titled "Entire rellink as a node" without syntax markers, it becomes the node for that rellink.

%A rellink's @[[alias]] can contain [[another rellink too]]@. You can also %nest an alias inside another alias% @[[Alias1]] nests [[Alias2]]@% @[[Aliases]] can [[nest]]@
```

#### Sequential links

```
# Seqlinks
2

@[[Seqlinks]] come from [[Niklas Luhmann's Folgezettel]]@. They're a parent-child ID for your nodes that you can use to gradually and naturally build a tree graph of them.

## Seqlinks and identification
2/1

Seqlinks, when present, are the primary ID of a node - and their header becomes an alias. @[[Seqlinks]] can be used as [[Regular links]]@, and must be written in full, e.g [[1/2]].

2/2
# Structure and syntax

Seqlinks can be placed before or after a header, as long as the seqlink line is adjacent to the header line. A seqlink is the *full path*: @[[2/2]] is not [[2]]@.

### Allowed characters and elements
2/abc

Alphanumerical strings of any length can be used. The / character determines the start and end of a node. A seqlink is always the full path. @[[abc]] is not [[2/abc]]@. Partial paths are not seqlinks: [[abc]] is treated as an independent node unrelated to [[2/abc]].

2/3
### Nesting and header hierarchy

A whole file can have multiple nodes. @[[Seqlinks]] make [[Nodes]]@ out of an ordinary header. Headers without seqlinks are parsed as part of their parent header.

#### Rellinks and seqlinks
2/3/a

@[[Rellinks]] belong to [[Nodes]]@. A rellink inside a marked header belongs to it. Rellinks in an unmarked header belong to the parent header of the latter.

## An example

@[[This rellink]] belongs to [[2]]@. @[[This rellink]] does not belong to [[2/3/a]]@

Simple rellinks @also belong to [[2]]@.
```

#### Frontmatter

```
ztsch-seqlink: 3/2/c
ztsch-rellink:
 - @is [[Frontmatter]]@
 - @[[Ztsch]] supports [[Frontmatter]]@
---
# Frontmatter

Zettelschrift also supports seqlinks and rellinks in frontmatter for LMLs that make use of it.
```

### Agnostic tools

_WIP. Check the roadmap!_

### Plugins and modules for your ecosystem

_WIP. Check the roadmap!_

## Purpose, inspiration, and similar projects

### To myself

Zettelschrift is first and foremost an attempt to convert into digital shape my own notetaking and marginalia practices. What I study and research is filled to the brim with jargon, concepts, and confrontation between opposing views of the same subjects - consequently, it demands a lot of crossreferencing. It was not uncommon for me to highlight book and article sections, and then add marginalia such as:

```
[This entire section] -----> defines _This concept_
[This sentence] -----> presents evidence against _This assertion_
[This paragraph] -----> is the core argument of _This thesis_
```

Such ontologized marginalia was then migrated by hand to my physical Zettelkasten (itself organized with Folgezettel) and integrated within freeform comments and thoughts. Later, I did many attempts at digital conversion.

One can only imagine how tiresome such process can be.

I've tested many PKMs and workflows in the past, both analogical and digital, and ultimately, there's no fits-all-sized tool for everything I need. Projects are abandoned, or take undesirable directions (I particularly hate Electron apps, which are now the norm). Commercial PKMs gobble up userbases and contributors.  And in the end, an untractable pile of files in many different extensions and syntaxes accumulates.

### To others

```ztsch```  is an attempt to build an agnostic extension for LMLs that is PKM-centric. A key challenge in today's personal knowledge management system ecosystems is silofication, and this issue is maximized when one tries to implement more than a simple wikilinking workflow. TiddlyWiki, Obsidian, Logseq, Roam, Org-mode, Logseq and many others all have their particular, untranslatable, and many times extremely app- or plugin-dependent (without equivalent plugins between apps) ways of extending simple linking to more complex forms of connections between ideas.

By making a syntax that is as natural and easy to remember as possible, tailored for parasiting popular LMLs (and *not* try to take their place) while actually well-formed and able to degrade gracefully even when there are no tools for extracting and analysing it, I'm attempting to make the adoption of a very specific, but also quite useful tool (semantic linking) less constrained to a single choice of ecosystem.

Personal knowledge refactoring is time wasted not learning and experiencing the beauty and complexity of life. And life is too short.

### From others

A few projects have inspired this one:

- [Agora Protocol](https://anagora.org): this takes wikilinks to their limit - how to make different people with their own notes maintain dissense while still organizing their knowledge in a way that ultimately is emergently semantic?
- [Argdown](https://argdown.org/): Has a similar though not equal usecase when compared to Zettelschrift, and was one of its main inspirations.
- [TiddlyWiki](https://tiddlywiki.com/): If anything comes close to emulating and expanding what a Zettelkasten can be, it's this.
- [Semantic MediaWiki](https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki): A very similar, but more rigorous and structured usecase.

## Roadmap

- [ ] Complete ZTSCH-CORE specification
- [ ] Complete ZTSCH-HOSTS 1.0 specification
- [ ] Test suite with edge cases
- [ ] Parser prototype (Racket)
- [ ] Reference parser (C)
- [ ] CLI tools (parse, validate, stats, query)
- [ ] Knowledge graph database (LMDB)
- [ ] Query API and backlink resolution
- [ ] LSP server for editor integration
- [ ] Graph visualization tool
- [ ] Documentation and examples
