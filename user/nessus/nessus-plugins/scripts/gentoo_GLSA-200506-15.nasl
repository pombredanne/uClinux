# This script was automatically generated from 
#  http://www.gentoo.org/security/en/glsa/glsa-200506-15.xml
# It is released under the Nessus Script Licence.
# The messages are release under the Creative Commons - Attribution /
# Share Alike license. See http://creativecommons.org/licenses/by-sa/2.0/
#
# Avisory is copyright 2001-2005 Gentoo Foundation, Inc.
# GLSA2nasl Convertor is copyright 2004 Michel Arboi <mikhail@nessus.org>

if (! defined_func('bn_random')) exit(0);

if (description)
{
 script_id(18530);
 script_version("$Revision: 1.1 $");
 script_xref(name: "GLSA", value: "200506-15");

 desc = 'The remote host is affected by the vulnerability described in GLSA-200506-15
(PeerCast: Format string vulnerability)


    James Bercegay of the GulfTech Security Research Team discovered
    that PeerCast insecurely implements formatted printing when receiving a
    request with a malformed URL.
  
Impact

    A remote attacker could exploit this vulnerability by sending a
    request with a specially crafted URL to a PeerCast server to execute
    arbitrary code.
  
Workaround

    There is no known workaround at this time.
  
References:
    http://www.gulftech.org/?node=research&article_id=00077-05282005
    http://www.peercast.org/forum/viewtopic.php?p=11596


Solution: 
    All PeerCast users should upgrade to the latest available version:
    # emerge --sync
    # emerge --ask --oneshot --verbose ">=media-sound/peercast-0.1212"
  

Risk factor : High
';
 script_description(english: desc);
 script_copyright(english: "(C) 2005 Michel Arboi <mikhail@nessus.org>");
 script_name(english: "[GLSA-200506-15] PeerCast: Format string vulnerability");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Gentoo Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys('Host/Gentoo/qpkg-list');
 script_summary(english: 'PeerCast: Format string vulnerability');
 exit(0);
}

include('qpkg.inc');
if (qpkg_check(package: "media-sound/peercast", unaffected: make_list("ge 0.1212"), vulnerable: make_list("lt 0.1212")
)) { security_hole(0); exit(0); }
