
rule k2321_2b1adcc9cc000932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2321.2b1adcc9cc000932"
     cluster="k2321.2b1adcc9cc000932"
     cluster_size="12"
     filetype = "application/gzip"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171120"
     license = "RIL-1.0 [Rick's Internet License] "
     family="rincux ddos stormattack"
     md5_hashes="['269c64165b000b672bf437ad3653aedf','4fe450f6dd5460ff4a54e1f9b248649f','ef97c7a366314ba13eb2e301bf8a1f8d']"

   strings:
      $hex_string = { 594c20d7af5235f84f99e8a1aab0ef2a54615740156845265405b9caefa50e2ef310a328845f1b22e9620991174b70ed30a0186eb6cfddd8dfc31e9d41abfbc0 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
