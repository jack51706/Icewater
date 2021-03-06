
rule m3ed_6b322b25dd82e111
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3ed.6b322b25dd82e111"
     cluster="m3ed.6b322b25dd82e111"
     cluster_size="3"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171122"
     license = "RIL-1.0 [Rick's Internet License] "
     family="ramnit nimnul bqjjnb"
     md5_hashes="['b8d743c344f3d36692de6717fcc252fe','c11a7292e129c745d5c0e410c77c73c7','ecf3fe518e9320d28547056dd0c32d38']"

   strings:
      $hex_string = { 403bc672be8b4dfc5ee8b3a3ffffc9c3558bec83ec1ca1f481011053568b750833db3bf38945fc570f845401000033d233c039b0688a0110746583c030423df0 }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
