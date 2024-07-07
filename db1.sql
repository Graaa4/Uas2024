-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2024 pada 11.42
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `Nama` varchar(255) NOT NULL,
  `NIM` varchar(20) NOT NULL,
  `Jurusan` varchar(100) NOT NULL,
  `Alamat` text NOT NULL,
  `Foto` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`Nama`, `NIM`, `Jurusan`, `Alamat`, `Foto`) VALUES
('Irfan Maulana', '221250000466', 'SI', 'saripan jepara', 0xffd8ffe000104a46494600010100000100010000ffdb008400060606060706070808070a0b0a0b0a0f0e0c0c0e0f1610111011101622151915151915221e241e1c1e241e362a26262a363e3432343e4c44444c5f5a5f7c7ca701060606060706070808070a0b0a0b0a0f0e0c0c0e0f1610111011101622151915151915221e241e1c1e241e362a26262a363e3432343e4c44444c5f5a5f7c7ca7ffc2001108024f01a603012200021101031101ffc400310001000301010100000000000000000000000102030405060101010003010000000000000000000000000102030405ffda000c03010002100310000002cc71fbc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002125cfc99e8f4abe53673fab6f26c9eabcdd30dbdcc37c3a426600000000000000000000000000000e6b83cfa53a7c995596ab29269394d5f4c6d1b6bcd7c72f56de776e8f534187400000000000000000000000000057c6eef3777991131b790910b2a13244cc2cde931a6bcf797d5bf176f3fac18ee000000000000000000000000109e4617a75788bdbae5e46e5c69bdeb0d3aa63933f4079af4396e385a166bdde774e1bbd01cfeb800000000000000000000000297ab1f113a75789d3b45f0dd49bdd72be9733b69267ace865976acf0b8fe8bc3cb5e5b65a5c7d49adb93db064000000000000000000000022613c5db2ece9f175539f1cfaf4e09af4f4e3eb9958a9a69c7167a16e3eb2be37b5e6dc7cbbc5aebf4e4e5f7014000000000000000000000019dc3cdeccb7dfe4c5ab8cbd39e36a9e9e7de65d1cdd7cc73da34b8b7b6f5af1f5611e2eb9f62f40e7f5c00000000000000000000000196b9e5a2b0b6df3eb5da65e79da9663bd3797af97b62df239fd58b8676df496fcfd5cb670756dcf86fb0d5e88000000000000000000000002b6add58eb8efbbcdb5a2d32ae5ae164efcb73d2b70ecb3522dad37b2397a79918270e90d7dc0000000000000000000000000c70d2d5dbe75d5a5c26296a9bd3434d33d96b4db08df5e7d2cb73ed431aeb96aee0c7a0000000000000000000000000056d174d225b7cfc1bab3b5cb16bea631d3826ba67a44f36dcf8f4daa6bec050000000000000000000000000012917c76f9da5b3bdd76b56cb7d33d48a695a8be64a50d1ea0320000000000000000000000000001095c79bb7779b8deb175eb394aedb725ce98cee5ee939986fa7d3099800000000000000000000000000383abccdbc13e9f97e9e7cb39f4c639f3365677bea5769d658cf6e6b3c7f47cbed65d0347a800000000000000000000000aa59c7cfb39bd0c385b396f446ce5bfa5e77a5af6ed7a6b8ecacda226d1357b408f3bb7cab8f37473edb79f7df85afafbdc9be9edd063bc00000000000000002bc9969ebe6e4aeee1db1867cc885c6512b30835f5bc5f470d9d978be1b34bc5e5cd68ab44f223c7b736cd5aeb9db3d76880b524db6e59c3777b8b5d3dbd0adb5f58280000000000c34f37671a87479a81108a82a5a6b24a242692edd5c732fada78c997adcfc22f94d2e317c77b35986589104ab12eb349349a497d71b4cbaadc9b68f4351abb4000000003938f5c7abc544c67a90111302b61130266b357cf4a45a6265944928114b66474f3f55935b56c402b6ac5af9ea105bdab297be77ae9989e3f6c31da00000089cee1e7e7a53b3c3ac48889820022c89890497892c4c4ca9491130573bd0bf465b5c5135226b72b17a0d73d0a5ab726d592da65b1d135b727ae187480000039ba787672614bd3a7cb892c8ade801113045a2444c17b56f5498b6350080a56d26ba52f7152f422d1222c234adeb3b44cb620b6d96a9b5f3d39fd30d3dc000000f37bb837f994ada9bb8e60a9ada8931222b6822d162a0b5e97aac929a741c55ecca3974e9c6cb5ab29359244a5129164db9c4c2eb9eb846db63b96d71d74f6c8e7f500000039b937c3abc5a56d4cf4ca16da97aa41240130224a9bd2c4c5a91eef8d6f4d71e7e9e1932b26a2d0b2448b475319f66f59cf1e2fd1f9acfc495b2df7c3a39a5d7a78fb09d71d70e8b0e4f64000044e770e2cef4ecf0e959a92acd96858ce604a44262a5017a5d34cf4eb5e2f7bcbf565f0edd5e827cee95b208a998949f73c3f4b1d7eadd473f4f1757233f9fb56d974db9b6c2657ebe3eb4be9499b351c5ee80000e7e8e3d9c98e77a74f974a5aa4152fa65ad94899000a8485a252f59b1ecf9feb78f2d7ab7f20898593549212d7cec9f4af03da9c9d384f98cb86672bd54a932bf4f2f41d0459b8e0f7c19000387b38b7f9d9e77a6ee1a52f422b6a1a5f1d6a420825025124a26adb6374eaa6bd12f935f5fcf322b64cc09989266b297be774b249873efcd33bcd65969be1b27556d4b3a26278fda0c3780067c9d5cbd3e4e34b5767352b6a914bd06fcdd153021120002d59ab699593e87abe72f2fb3e0312622d626244c0998949b524dd5b18f176f14cb59895beb9689d75926d6adb97d70d7d40018f2f5f27578f8d2d5cf456b6a958419ed97454a0804a268812882f6cb42226a5ad5b1168944c0904a04dab635d32bd98f1f5736394da256fa67a274da974d6f4bf2fae1afa80031e5e9e5eaf1b1ada99e98a5e856b6a2cf7f9fd333a4af96aa26ab3359b24928b4116a8be77a1a922529098004c4937a5c9aefcc615b5265790d2f4ba6fae3b9adab6e4f5c30e9000e7e5e9e6ebf132a5e996bad2f4229316d7a39ba135442560135179a5aac8115bc1545cb92924120013122f5b1adb3e8af333d70c72d817d33d0d7a39ba534be7a727b0187400072f37473767854a5ab71ad2f4aa566ab1d1874a244802b78aaca09b524b2056f1744c0944824482604de9a534ce48e0f538f5745116cf4db4cee69d5cbd29a699e9cbeb06bea00427273ed876f834ada9515b5233ada8be8674bb2898b5d715b2aabc1116145a084c0bd3d73832f6fcb32999b21682a911291605aa2fc9bf161b74d33bdc2d7a5cd3a39f64e8bd2fcdea06aec01135baf8b1db0ecf12b5b52a297a4533d2874690b0854905902501122b1688afa5e6eb5eb79b4bd8b56526b68588b0acda4aed9e8911a5169e7fabe6e1b74b170b5ab64bed8ea755e97e7f4834f700cf4cb2d1c796b975f8f5acc55697ca16a6f366f87473dc4965842448226242456b3486996957b6774926a26a2d3492d35164dc2b247274f1639ed35b31b5a9a16d33b9d97c76e7f4434f780c76c367372677cfa7c9ad6d5a8cb5cca76f1776bdf6c34cf3d4232c0099aca593510858acc44699dea6d494dad8eb534d21335eab13034d71ba4c6b9ad78fb39a55a265b5eb62d7a5ce8df9ba7477868f400fffc40002ffda000c03010002000300000021f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3ddb4277f7cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3d17a28da4a53cf3cf3cf3cf3cf3cf3cf3cf3cf3c2f74f1444f1e63cf3cf3cf3cf3cf3cf3cf3cf3ce62582c33083a0ef3cf3cf3cf3cf3cf3cf3cf3cf2a2e8f38847904d57f3cf3cf3cf3cf3cf3cf3cf3cb3ad9489bb6ac3f77cf3cf3cf3cf3cf3cf3cf3cf3c84b98ae8ee1eebcf3cf3cf3cf3cf3cf3cf3cf3cb2c5a5ee8a4386ff3cf3cf3cf3cf3cf3cf3cf3cf2d644d41c3374f3fcf3cf3cf3cf3cf3cf3cf3cf3cbdf4ce6ead85416f3cf3cf3cf3cf3cf3cf3cf3cf3cfb23f68b57c573cf3cf3cf3cf3cf3cf3cf3cf3cf3d02998e80cfbcf3cf3cf3cf3cf3cf3cf3cf3cf3ce70e75b4d07df3cf3cf3cf3cf3cf3cf3cf3cf3cf23f624792b8dbcf3cf3cf3cf3cf3cf3cf3cf38e2c37942e114d5f23af3cf3cf3cf3cf3cf3ce556cb496165ab41f59bc0195bcf3cf3cf3cf3c8f8ec18415c64f0096fa9d4cd88c76f3cf3cf3cf1e55849218c5c24cfaeafbc5d3db7d34f3cf3cf284124ae97de5292c428ca2aa0dbbb58fbcf3cf3cf7085535d957b1b7fb8eb5e649048ebfcf3cf3cf1799cb534d6b940016d9b9b5eeb0d1c3bfcf3cf3cca7333cc20a500f71fca03f691ef632c9f3cf3ce3829d47fca432963c456d31bff5c4f9f83cf3cf3fe8abab64233ce79965b18458675d71780dbcf3c21a5bf7bf18eebcd6bfa832830086b92a974f3cf39aab1c27ca0c7e2dcd64c8b2980e2c04ff00d3cf3cd5a0bbe43cc8624e282b5b31026b4383b9fcf3cf2fd930a93c6a40e34438e77eff008afd305765fcf3c5d3fc8b436ef64c62cdf58c73d2f2eaa029df3cf072b50098e746db344e32d78c7e146c6b2ff7cf3d3a43ceb2f43113cc30d042318543685b45ddf3caf69176ff00554100c3ea2887842086010e677d3cf3fc88bc45d9400b10f801f8828d3e2a5ef915ef3ce2ec11d9eb221ffe0eb3b01df2cdc26e60b8f3cf3fffc40002ffda000c03010002000300000010f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3de1ca11e3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2c86f6c0d9fe34f3cf3cf3cf3cf3cf3cf3cf3cf3cadf3cd8c8a9cd7cf3cf3cf3cf3cf3cf3cf3cf3cfa94c17359e0b94d3cf3cf3cf3cf3cf3cf3cf3cf2ec46e1fd8cafda34f3cf3cf3cf3cf3cf3cf3cf3cfc83ff0026251065f5bcf3cf3cf3cf3cf3cf3cf3cf2dd6dc3022ac19efcf3cf3cf3cf3cf3cf3cf3cf3ce9968f2518ed853f3cf3cf3cf3cf3cf3cf3cf3cf3f11e45de4ea2b73cf3cf3cf3cf3cf3cf3cf3cf3cb23aad674cb5297f3cf3cf3cf3cf3cf3cf3cf3cf3cb82b377d739d7fcf3cf3cf3cf3cf3cf3cf3cf3cf3d1efeebe157bcf3cf3cf3cf3cf3cf3cf3cf3cf3cea0fd023e734f3cf3cf3cf3cf3cf3cf3cf3cf3cf3d73570c7b86fcf3cf3cf3cf3cf3cf3cf3cf3bc1918121b4739a29bad3cf3cf3cf3cf3cf3cd60031aa7805341a9535ed565fef3cf3cf3cf3cf5a68010662b41f6b36ea86a306219f3cf3cf3cf0642bd5f8c94bb7a809b53f2fe1a3e5df3cf3cf3967c3ba96b6f8eb884bf444a6528ba65fcf3cf3cbf6d65ac30fc04b459a9f200b8db88c16f3cf3cf19018381729efaff0088a5183df36f00f23bcf3cf3ce81b016af7f4da3a79a34ca9a3dd67e89f3cf3cbfea292a40c903550f14b2081769aa2b39bcf3cf2d6130eca87c71fd5bcb1548018d2e3e2095fcf3cde9ce6d031f3ed7f99787b7c04aced78133cf3cf22ad293d0fb08e27eb37b279db7c5e08b22dfcf3cdff0de07c74915db9902bbc3cea969865cff00f3cf053f269a5f224904bece4f61c0fc2beddc27bcf3cdea0c8c8fbdfe271fe5674b1aefac92325fef3cf326dc826462504a4db5d4eb8a3453b7f1a0ff00cf3e2cd9d7b3e14467dc77f851489071ba3de936f3ca6e17aaeff1358e2ebf4d278d29bda6e01c97fcf2b9cdba5f164923a2f8ce8923c9982331daed6f3ca1b751bac3b1b01586204daf23c170e03902dfcf3fffc400351100010400030604030802030000000000010002031104102105122031415113224061327191233034527281a1b11462246082ffda0008010201013f00ff00ad804a87676265d4b77077726ec86d79a529fb219aeeca7dad49b3266fc2e6bb4524524669ed23d2c51ba4786346a561b0d1c0ca001775720732027c6d78a70042c4e15d13891ab6f4f49b3a1dd8cc846ae40ab568144de4f6870a58984c52115a1e5e880b2028c06b1adec004f968d2f13dd078039af14a12a6bc128ac5c3e242e15a8163d147a3d9f30af444db892aca04aeaacda04851bc91453b914f14f70f73e84730a47d04d659b2518c742aa9520c776544267c49c7ca4a26c93e8626191e1a9c7cad4116b8044da69ea839c8bfb84c3e60b172f878779ea450f45853f6bfb144d2056fbaa894503a2649ba3922fde29a750b1b6f8cdf4d7d1406a667cd390080441c894c1962df51d753e89ae2d7070e85473325e5cfa8406a80c8844689a50d4ac5bae403b0f478676eca3df441072b57a235482c54ce63c063aa86a8924924d9f4903fc460279f23903984f76fbdceee7d200490028e130b5ad2753a94402a82ac88def2f70a58dd13cb1c351e9366e1aee670e5f0a9fe240ab08944a61f3058ec378b1091a3ccdfe47a10d738d0049516cd9dfaba983dd45b3206eae25ea835a000a7f8b86216f09a34588d9913ecc6775dfc29b03888b9b2c776ebf7b061669cf91ba773c945b3216eaf25e7e813228d8298d03321622275d81688ae68641ae3a00a080836ee680a088ca6c161e6b2e6d1ee14fb2e666b19df1fca735cd34e041ec7ee701841338bde3ca3a7729ad0d0001432a5480549c13a363b98470d1740861e21d16e80344c191088d55652c114a29ed0562b65be305f11de68175d7ee30b1785046ceb5650080c80c804f1911952604722101a20320b17188f132b0720ed38a166fcb1b7bb80402080cc6446888cab20344722101a2acf69348c64bef47f8e2d991ef6277bf202720101c2058442ac80b2822865d322105b6595346feedafa716c9654523ff33abe886402aca904111aab0ac2684389dd105b65970c6fecfafaf160e3f0f0d137dacfee82010e109c3544155d6936eb209c401650f11c6c9a1ec8121c2df60e4ee686a16d460760e4f6a3c30b3c49a3677700a9040ae8870b938ea89280ce7bf0dd480bddaeca4141a6b4b191287258a66fe1e66f761e1d971efe26ff002b49432ea8711e4821a9cc22014c2f638d6a3fa4f2e91c3f283fc85611439e52377247b7b388e0d8ecf24aff007010ca901c4792d10209cc6411c8a1cd1e6b1edddc64c3defebc1b2db58407bb89cc21c232a369a28a399c8a773c822b6a0ac63be438366fe0a2fdff00be0045d5a28700288d50e1032773c82e8b6afe31dfa4706cf158287f7fed0472313ce26293a35ae07f7e208f19b479a39ed3378d93dabfae0c18ac2c1fa064574c81e11c272191e6ab2e8b68fe366f98feb820150443b3067d10e3a55c47928e590632681fad8df69f6ed975416d4158c7fb819816404d1400c8ab2b0f1ba363b7cd92e249cab86d036557118bfe478bfe9bb985b605629beec19e1c6f4f08eef6e6721cb84a2804d038404578a7fc9747d030387d48473db23eda2fd19e045e2e11fed9958876ec121ecc2b0eede8213dd810e1282078020514e8dbe3789d776b22355d56da1e680fb1cf6636f18cf60574c8ac71ac24df2587696c10b7b302032088cc20814730884f1ae472db5cf0ff00facfffc4003f110001030204030406060905010000000001000203041105102131061220134151912240527181921432426163a12330333572a2b1b2c12425607383f1ffda0008010301013f00ff008d921a092400372556f136174ba097b577847af9952f1acbcc7b3a36dbbb99ca2e349f99bdad2308efe52a0e30c3dfa4b1c91ff3054b5b4b571f3c12b5e3d56b2ae1a3a692794d9ad1e67c16278c55e232b8bde5b17d98c1d0676ca0a89e9e40f8a4731c3bc1b2c1b1d86be36b1e436600970f54e2cae3356b699ae3c910d7c0b8e56565639c523a278737e22f6bac1b1165752b5dce0bdba3c0045bd49ce0d6b9c76009551299aa25949b97bcbbcd450730e63b2110bec8c45c7642009d4e9f0b9b96075c68ebe224d98e700fd2fa7a955b79a96a1be31387e49adb94c003004005ca1582b0b2201dc29e20d370986cf69f02153b83a085c362c69fcbd464178de3c5a542cbb93a4e51602e99313f5859020a242323477ae60ed8a985da98dbc8c6f8b804c68631ad0340001ea35d56da4a59262de6b6cdf125307e9a536b5c93646c3b9091ae7593004f08b5884763705483d02b04a3755e294edb7a2d773bbdcdf52e2169387388ee7b494d02e572ae4683701346a9c13e0e73bd906068b2782410b878f615acb7db0587d4b166f361b55fc17f2d53774365de8100adf27a03d2016014dda55f69dd18b9f79d07a95442d9e096271b07b4b7cd56e175342e06400b09b35c0ee89d104020814f4d3aae1e8b968df25bf68fd3dcdd3d4f1d80cd874a40d6321e3e1be406b91401053cac030c827a59269e3e60e7d99ee0991b236358c686b5a2c00f53201041170562b4428ab1d1b4fa0e1cecfb81ee40e64a782e2001724d82a48053d34308fb0c03e3ea8f7b58c73dc406b41249ee01623890c42a9d2b1b663472b3c481de502ae55ce424ec9ec96d7e47875bdc55156415b4ec9e1376bbcc1f03ea9c5b8ab9a1b430bc7a42f35bf26aa51e8ab2b20100a5fa8570ce2c28eacc12bad14c7e57f71f519258e2617c8f6b1a372e360ab38b70d8096c41f3387b3a37ccaabe2dc4e604441908fb85dde651739ef2e712493724ea4954a3d0080e89cfa053b7586f16d6d306c7503b78c0b5f678543c458556583670c7fb127a27f5b88e3541878fd34b77f746dd5cabb8bb1098914e1b0b3e6779953d5d454bb9a799ef3e2e24e61524ed0395c6c81076cdcf6346a6caa2a39ae1bb226e73a0c7b12a1b3629b9983ec3fd26ac3f8be8a7b32a5860778eec514b14cc0f8e46bda76734dc7ea789f1b7d131b4d4eeb4cf172e1bb5a9cf73dc5ce712e26e493727208e60a64af6eceb215730ef4ea994e9cc8b89dca79d15d02af9d1d7d65149cf4f33987bc0d8fbc2c278b61a8747055b392571003c7d524fea317abfa662755303769790dfe11a047a4261d4e57cde503902afaabe44ac1aa5d5585d1ccf3773a31cc7c48d3aabe714f455335fea44e70f781913d4d3af4b8ea815740a27544abe889d170a481f81d281bb4bc1f989eae2fa930e12630759a40df80d50db2074e82813740e6e36089d722502afa844a1b145703cfcd45570dfea4a1df30eae35a9e7aca6a70746465c7dee391d90c8e6103a66f3a2272715cd6dca6bae821b22b81e6e5afa98bda86ff29eac6ea7e938b55cb7b8ed0b5bee6e810ea3930ddb9b8ea8e534ad8da5c7ff00a4aacab639e79b988d3d13b02a8670c77201604df740a08ae169bb2c6e97c1e1cd3f11d35f3fd1e8aa66beac89ce1ef034c8e47a4a8cee112ac89c8aab6733187d978298436a81706eaeef09bc8dc45ad6b9ae75ae6de09a534689eb0b9bb0c46865ee6cccbfbafd3c5f53d9613d98de591adf80f4b2282287414c3672efba274cca70b8215651b03da248dc79468e009047dea8295b1cad2d8f94900ec40b14c1b209e1054b376f4b04dedc6d7798bf471b4e4cf4705f6639ff0031b7f8cc223a86e85d3ae0665108b506eaa31a2b278d13765c3727698250bbc185bf2923a38ba4e7c65edf62260ff3905709dd17c8840a71d51cca2101aa60f47276c86cb840df05887848fe8e29fdfb57ee67f60e82d71617006c372add2421a8477e82110804cfab915de42e1016c163ff00b1fd1c4af0fc72b4fded1e4d010d901947531330eaa8083cf2491907bacdbe647430ea8ef90c8e4ddd0db322ce5c28db6074c7c4bcff00311d18d3f9f17af3f8ef1e46c866edba2d983ae764731a143eae6e5c31fb8a8bdcff00ee3d15cee7afac7f8ccf3e6ec864e19143339e991cc0d554d2c0fc2292b6201a43bb095be2f1a877c42217722b849e5d82c23d97bc7e77cdee0c639c766824a2e2e25c772493d15f511cf2c7d9b3958c898c6b7dc35f328aee57cca02e8dac08dba0e410a9ff006f14d63fb7325fe16ccae0c75f0990784eefe833c4dfd9e1d5aff082423e5cc2089d5144f4140a71274415d028ab94d2494699a30d8aa46e677c67e0d690ae822b820ffa3ab1f8c3fa67c40fe4c1ab4fe1dbcc8198587c664afa467b53307e6abd9d9d7d5b3d99de3c9c8a3982aeb60884111993aa0354da87fd10c1a72f69cff1b5b208ae063fa2ae6f83999f15bf9705987b4f60fceebbf26ac0073631443f12fe416212092baade3674cf23e25028a39019128ab1c81c8a09a6e10437cb8187ef1ffcbfce7fffc40037100002010301060307030304030000000000010203101131041220213041325051051322334261711440527281a115232491628082ffda0008010100013f02ff00d56ca46fc3d45520fb8a49e8fcbdb4896d34d7dc96d1525df06f4bd4c9913c68c5397a8abc88564fcaeb57dcd35255672d5993264c99326f1bc6485492ee464a5e515eaeeac771bcf453336a7537484f2bc9a6f762d9524e4f9f4d5b2424fd484d4bc976b9f2c7470638514aa63c97689666ef1864dd144dd3046193dd8e06eb31c116519a7cbc8e5a326f2ed4e1bccdd1c4dd37591a46e1ba7bb152254bec4a0ee8a52c3f23a9e090f512294708c1ba6e1eed0a06e8a06e8a03a63a057a38bc08e8bc8a7e197e07a904474bab62e856c15a1989523876890f0af2297859dca6adbc853427c2842b4b42b479da245612f227a31ea525c894b035266ecc539a215bd48c9356724875e28fd4c486d084d359195a3cc96a43c5e495162a3fc90f0a30723e124a26e94ed5353758a8e4545ad0a73943f06a6d2b9649ea50599791d47c8ad1d242d06c5bce582aef4258f78477a49fd5823cc8115c8a8b99bc46aaf544662c488ac1b4f8096a6cf0c2cf91cf5455598ab60f76895252d58a2a2b08c10441722b27866177424f3e0274f752707cfba29369e8236af014e86ff37a188a5f0e9e473d50de6d830606ad021a1386474c502314615b69598a5f71c3e0c7d8869e472d0fab859b8c84482b4ac84adb468bf2539e5e191f0f91cb43bd95a4c64a553e9642a3ee3af25a47252aee5aa1da22195b429f7f25c357de336c0a31f42290a114356899b4d6f323a3c69e4ad5e56e466d1c0b0c7c87a91776b7b286b7638f2676638cbd44a46eb37642550cc9763f51d999c91b3149a636df933be0c5b2c52131a31815aa3e5e52f87028dda15a6f2fca65a1913be44eefcb2524b97a8edbc6f9be298a66fd918f85f94ca4a29b629b9564d981abe0c08568c4adca8d4fe9651a9bdc9ebe515eaef725a14fc6843460c5d214451122bfca9ff4b29be62795e4d566a31fb8ca7e2226071370dc140511444adb4cb14a4435212c7924aad38eb225b57f143937cdda978888ad8b62cacd9b5cf96086b68d5c6a8524f4fdfca708eac9ed5fc512ab396af869788888463815a4caec8df22ad2fc91ab17fba94e31d592da7d112af51f7e8517f1903021183062cca8cab51378446eef19b8e82aabb99cfed6528c7564f686fc2379e927879296d50faf911dd9785e45112e1abb552877c95b6894ff00047a298aafa8a49f7fd955abbbc96a4a4debd68ca51d1e086db5a3df3f923ed1f5a67fa8d1fe3225ed08768327b7d47a2489d5a92d64ecd90e35c2aa32324faf525bb16c6facba0ed0be7064cd971c64fadb4bd17555bbf41da3c71e342ead59664df5fbf1b191d4567c2aeacad1d50ba8f9263eb21f1bb405c4c476b2e088ba955fc03e9aba1f03c5dda17765c0f4575742ea577a21f03e35743171316a2bbe2968aeb53bda22ea557f1b1f03e92b2e26450aef8a7daf13ea64442e9bd07c2fa4addf8e1c0f8a7daf11eac8885d3aafe018f83b74d12b429ce7e18b67e8769fe1fe496c7b42fa3fe88ecf5a4f0a0cfd0cf9ff00b90fc09745121da27d444565d2aef443fd822566e4b63a7fa7fef81b937cdb364a7b8bdfcdb515fe4da76da95b9691234ea637b0d2f5171d0d9a5564bb2296c9461a95362a4e0f775ec56a7eee6e39d2ead015a3d2aafe263e15d343d2d4ead4a6f309346cd39ed33c4e10696af06d9b4adff76a317189fa892f0c60bfb0ead5a9e29b62b2e0d9687beaaa3dbb9baa9a518e8bfc1bfdb1af733bd93da34392a8bb2c3e1891b47a2f92631f0a1f4970535fa5d91bfab5fee469ceacb1159655d8ebd38ef35c888b8bd95bb89f2e6557ca5f928461e9f84c9acfd3ccdb9ffc597e5591d864486968746af82cc7c2fa685fa49c2795b924b97dcd8e97bdaf14f45cd9b6c5d4dd8e7105ce4c7b5fbbf86847757af76549ff00c7de97f0e62e3f6756dca8d7f21ade525a648cb44fbf727396ae51fc266d7cf657cfd2c89bb2298c8746bbd1598f85f4d0f53d994f14e551f7369da255a6f9fc3d914297bda8a3ff0066df5d7ca8ff007e8464e2d34f994670ad49635ee468bcf37f08a943e236e9286cca3eb772de76453191d7a357c4ecc7c087d34632e29772bc951d930bd37514f65ad5348f2f564e13d9e86ed18e5bd664a9ce38deefd1a355d29a68a5ed083d51faca5196f7f636ada5d697d9696a92c2c0ac8a6323af464318f813ea229cd427193eccda36bf7d858c2454daeace38e4bf06fcd69262e92bc9b1ea2b2207616a2e39f858c631f0ad3a684b7b910f67d47f5217b33d6aff0081fb3e92faa4568469cf7636efd3a975688bc277171d4f092b3e0765e15d44ca32ca4ed32b4b356437c85d156a9a33bd908891d0fa85c757444acf81884fe15d58ed9529c52491fea1b47aa1ed55e5f5bb3e8a15aaf805add0881f50b8eaf627a5dd9de1a756565d48dabf848dd08a67d4478eaf62577676624d2595d3cd9d9752264ad2f87810880fc42d78eaf6243b3e0c65a36bf9bffcf515d6965d2c31bc224f8108892d45c757518f85da551d4c37e86ed9f4debd44224b2c9ebc0844497623c757c44877769088e967d46b2ecba48873251456f17021113e94438ea78d921ddd9da1a191f523d58b1f346d1e216b74211f490e39f89921dd8c76869d5910f0f5948ad4b7e94a6b5446e84223e121c72d6431dd8ec9362d3aac5a7515e8cbfdcc7a95e318d69256ec2108811e39771f031db71436787acf9bfd83d9f684b2e93c7497043c71fc959ffbb3fc8acac880b5e27a121f031da1294924fb683be45d15a9b14630a53ad8ccbb142ad59cb766d3c95128d59afbf4518bb78e63216564405af14b464b858ed4d72eb2d4d93688d3cc27a327b4ecf4fe5f3976fb1af37d1460c5b75cb92b4792b2b221c73f0921f03bc5610faab5eac5de97cc89358ab25ff93e14445c553c24b85da87cea7fd4545f1cbf23ea316bc59e8290c52dd699531efa6d7a8acaf117155d090f81db6459af02bfcc9751bb2d7a68c18e57912e4c8e96574434e2aa31f04adb0fcd7fd257f992e9bbad6f915f1c2888d599517c42b2ba21c55463e095b60f992fe92a3cce4feffb24277c70210ef53c575c10e1ffc4002a10000202020103040202030101000000000001101121312041516130507181a1b191c140d1f0e180ffda0008010100013f21ff00e567b8d21a96a6814d18fdbd05b746a723594781bb6c281b95026ed14f7936f866fda969556186592c2713c13215845bae8b165af685bd361ed6c6cb2e6cb9104c65b2233bf66f850696d63717e831620c349d10831ecb422b1ca451454218142132c735a84ed7b232ff00796fc07545a514924300d43645542650cc617b1b53bc172fcca512a439b48b8d85cd59458a8d0dae8a50486a850aa7ec79fc46e2c95acccc68584553373116a12d0f7b48ac88d91f85ec5f94361911aa1428428484e02dc5ee043a4f2874ebedec5f82c6b218d8b0868db1bd316c42e06925ba1762b26e8a178f62fc0133f92bb9d32b633c95741cecb74e0086547961a523c1a32a7129c5b45eca925056f424a586fb0907a45e0bb161dc1b33633ca7dc84d2269e19486d129c7b1d38186acf5340e48c11fdb366687716936754320c5a2a6313ff004026adac77da2914aa05163dfec9a95e5143b882b9b99621a46f7d47969a02425a76588d32626bbae0ca66d95fa1f10bdf4f789026be9f63fc92d57912142e251b9508c8cc78108f4425e90b479094b5eb8413f3f64bfb8848a1a1c56dc1886dab5d0a5c246d606af8e37bc1a3cfb20b297d18b806a65dc55d98b2c698bb37c0e898f96210c10c655367f15fce3d91ab4372131877849d8632c50d19481318d06cb5b6d2ad95c1c3af77ecb60cb1c420904d0c9d07d0c50f02f10c440e5bedbf68e68735412791374cec1d91d53234a5fc9db16304d8c8d31edbf664c7129891d077619d84b5a4668a28af7f695a628508284a3342fda876484c4c491a69a86131bc7b55533ce82e4b115077849e25b7079fe3da74148eeadf81d8a6284104f23215b83fe03a14ba4fcfb45ce93f237f39a16a1c0ac498d7c38ff99d86a5f0210d7b33dabc9606349aa15a52619c70f9828af53d3f64d21fb11afb58e5b2db19a0d63504909048492c8abc0da2b17715e57fe7e934743ec66c18b8712eb84aa1214195a65edc6e2c9dac314de0753a7e7fcad1484ff7b3b0fc22c6cbe0cd4ee2638362a84128509e473d1de172b13364fa1ed2848969dff8a96ea31d82fc8c66dbe0df26293698f2492ddfa0c9b4a781b2311696d9dfaec8bbe9d864c4a14a6596313b4da1fd366bff00c27fdc50c6dad97c5962e0f42634b7b783768a13fea6600ea07c9822322f7d8d96414d8d96316265898af9469dfd7afddce9f231e5b1fa09b950c2117c18c36260431a266cf80d8b1e2cb10988bc93f5b2fde3e6f9ab2172630b2c4866e18e08622c4c4e2f6bd5f93393e0e54341733096171c8cdc437c04cc8ba97a8f6bb2717e8385c1d02e6621a438ac46c6c3990a3b8fe9ea54de7117e998a1a8842199e150e4f62610a18b341e2129c8d8eae17087fd7a9fbc83e67c0e7a3822e58c68161c2851423f1451a87b8b6a1d3ea59f2c1f33943e1a2be6cc270a1145091fa451b8ff002193371bd36a67d90f9631ca6173e83921f0b18c4c0b814d091fa385bf90d645a5e950de646287c8a1c234129a6219d7c623b88be826bbb5e49fe8fe4ceabf63a7612ca3b2ae0c42847c05b68de353abe64469ea01f0e9e8a9ea843d97b5f6d6478773c969a2fe4266ab36975f92caa3f092d71583b62bba12d265f7660be181b916d8f6246a757f23665a7a56447c187e828dc5b7145895e6d9332d30c73dcebd7ba5fec79f51d0d07251f6518bb55abe4245499363442e85269f7b592cc7aa0842d0f63651a46be8bdaec86839e86d25e8aad08425eecadf2d22ea5c501d374f42619a72f042592a7f765fd19d6ce9d7498b339b44955e46cd1ec6d07b0ceaf45e9bc8f816262799a7cd0a35cda4bd857fa401682e6ffc25e44a54eeb2163f52ff006425242e576a6d6183113dcafb953715b5df09342493055d4379359b3a5f59d0abb8f716c41b3e9031e0e2f259a21959e694d773ab07a5f08bab0327ae58eaec8c2ffbf6e6875649d517434fe4214fda14fa7d9d68b2afa1ac8b0640eb07f4db58391c332af46b86fbc352fb18ff00f5066e8f805d3ab8b3fc163c5e54f7f72f93ea1c57f08dc793a76336f10a17476cd4506c9a42b5cdba563db6f90ea54c6efd3d843d6aca1eabdd7cb2cd68acd2aebb8aea5fe18cdb6dbb8ba1725271dad8616e0c3c9d7e81a9de39431b2cd4f9d965c30d649d706c9627fd41365867a5798bbe44213146b08d85211eae6f4741c1c382d0bfc1e9210e4d1e5b4748593c940d39213138b10af886650dbeb9b603543838626062ef48bcc267c99ac6fe97d0ff003f560f9327e8b64b1d07a6338286e3e0477e7ac063e2752c97d34f0282783685cee10f884ce362918e836e7a9d46393166e2f9cb16afb45f3b8c046685a9af4108e82821b2108523e5180ddcff00bcea838319792ca2ead235fc0bb2b935c1ba0d8b6e2cfa0421686e435a39c2e03e8d46ff005cdb0f83ae0c638d84c75b745fc0850c5f1686a2cbb358b08b17a4d18c0c68216b80da835e6d87c48c72d8633410c36596589cb2a13a2847b32f46c6d0d9a124609f0262d710f69d5e84de0f875116a0b815365cb51df0bd0a2a2a701297e0c9390593abe6f65b418e6d27690a2b8d97387a8265604391d407f8133c866c374e7f9ccde0c7332d296b62d2cd17352a52cc1172ae2b6362114761042b4b181710d4df9b6de62c71aca8cb659e1741e908a28a29cd15c2ccb69256df42af3dcc56228ae48596267e30bdfe666c7a4a0a0f9e76cf8998c71d61a0616b80fa0c8a2848a28a1a8d0506674bda8a5bd74ba0b8a5485090ca2b8ae543b16c6b6e0e2a1b2e635456318e1a46ef0c0b05f070c6204a866bbec5f3d7aec16d9b32de450f534514c4699a28d21f7b33ab165283645b5cb64cc736564625318b8b2c5c68a1a34c22e2c6f1c115183235819fb1fa3c248fcca149d1cbf70e318e371e84bc1d029286d0ca84b9b1a44c5c565f0b45b3bd0f02319d85a6ec6b52421b26ab96891c3378fe54ff00061f3cbe0e2a3a40d9a21313c4b8b2cb18a14650dc12d34490a0dc8fa43c18c724fa98fcf96e2c5090e18633445883143487c4c6b451c0304a4850d396ff005338734cbff3279e2143df270c6316d7062e8a186ab85e98b6a18d88a48421b8ff00ffc4002a1001010100010402020202030003010000010011211031415161712081509130a140b1c1d1e1f080ffda0008010100013f10ff00f95bfdd63285ccf9b5a5b5fa46d3f8e5420796351be0094fd04475df6ec0c2deefea514a86b77eedfe102ca083474fe2b65ff63266b3e37898be9e8930539e191ddcb2f265971b0b8d3a4b5efebf886c902529cb7233ae8db5f7088cbb08c0710be9b838895f40fbb79c877844d1fe14fd1f096aae829b7272c8e7c5919d0f987cc91ee43c3972a545fd5956a87acfe15cf79e524af4458435e8f8cdcd91f12fd2dac30e73a05518101bbdd6007dff0008943331d02cb7321239e70b4678f324ed848573b5cc332f0cc088fade0257925f467de10582dbed7f83e5ecc722ceeab26e5ec779cfb228f866f86ff52621900c0d63384faa055fa1023dcca38705b11e13c4a592989e9361d07f8228c728e0f4ca88f5ce5e80d2d9f3b994b1178839b9cb61ddd2d382c4f10b71255357997f06708e9f683eef60787f0454805ec3f56ddcf31acdaa085d9132c8e80ece403312122f44c2d468484b4fe09ae0efff0095fddc240b391e207409709ccc6ed8f107312e2ec7431b5ea07df38436324d16214cc1c7f0474bdab01f95cffcf6bb5d1f16a8abebd473f7d236012592fddaeadc2cb1b188c91ca696c495c83d9605bf709f6b1dfe1107a66913d58bf8b7d236c5dc2dccd265ce503b5c5ec2772ef2d8b93f370b2c3ef0b92a4fff00796a58347ee1e0f7b4b5b2eb1dface7f834cfb987b52707bb80f8c2e172e005fd12c50e2f68558ac34fd5ad8fe9ee41a10e8da0cc0b3d84141fa608fd29804e77eadf1db773d4b1af404df7e27d7f07a423c3edd261cbbb747d8cb20860bdef3d630f2c0d926e162421f2c6d5b2337be444f8468f30e4523b4673c43342f73bfe933b903df7097ccd539c17bf10fe0c73e71837ee61e8253c389180f100759688f823f84670c8479aef14c1890ca9e28d0058e09f560cf5fc18887c8996e629b9a3859916a0480bb4192bdd2486c4f8c7368da67165131b8f13eb0632dbd8b6cf91bfc19d53728d237a33685e1b917c4c2afca8e05ebde237fbb65bc2bf4bb68c7b9eb6990237db3b338776ec07265f70e78ede3f83d82ed9f30d9d97799edc30de270896e28013d91d63ce0b373ae73ce113b666ca1aafbf60fe170a6e6dc1489e08abde43bb03ffb9a630b9d91d9faa43af2301a2db2296280e78b1bb90e7a3f863e61c8f63c4c9ccb29fdcbb2b2273b379fd319c78f3712b266624a1ec6c323b123d61b205e5dc6d0faff000c8c60b196ecfb1acf726e073199dffb49b79be2ce3819673a0fdb5fe8fe246147401ea07c5e04a1ccda70883002dce780cfe246fc571614e8040eba176e6b167d67ad9755fe2788e4c3ef3998d431d27ce6c5b99c4e3164f0c9a356e4cc799fc4998c0d66ab9721eba3b2d23e480f660b0ecc7b0011e0bdd6b178ff007293478387d3f882d8e7efed72139c04e2cdb47886ed3317bee2ed6476971fb2fed4ac3ca12eda49fc330b92079fbb6d63bf7cb608429c1617879e874f233ed9424e6405de5495cb4e6fe9fe112cd5e8e5bfa8fa87ff00cf626a7e533e186d1e03d26ce27cb2f28e90e06302f5db021dd6208b0718ef6c87d8f27d9ff3fbeb7add7fa2ee4cde163e070fe8b4b4bd1c3787890d64b1b9cbcb6bb4996fcf4bc24e54dcf9e31c0b603443c9c363e0f2787fb8637e341dff00926efc2798ca6debff0084b6750fa49dbcf51b16cc0b1d4e3b1f9214462d891d085392784101e2c8ed6f1624b80915d0f34e11821f9b59b0c6064bc3e57259c3bf67259443d9ff0017330783cbf45a01f3794b0d5eebcecb2cbd0d3dc30db32ff9a0be32a4d50164f2b62bdacbc59c748906801dd58040fdecd8df508e938e9d14dd9e91a881967b23e1f60e1bb14bebb3ff000956638e57b44adf633d0a4b2cb9db1e3256c2c1b1e571118f7a2cb2be103ff4b19fb9ad569bf443ff00700837e5bdd93fa5bc2c6651de7a161c67a032c29d41d161ebf13dff00bbdac775dffce7bbd99f74faa57babcb2e9b2cb2ccdb7e2db6726f118a2e65d9ee5d1bd75dec265b237025bc3708af1c11becff6c9310099b10eb108b8e83e74513c9293d1e37c9fe67c8f01ae87a32cdbd191c75f2b2e1ead81916c3d16c874f62590747cdc09b5bd0b948f33c67183a93e4b1d7b9c3fe5c2bb3c3e8e097665965eacd27338943a745cc76b2fbdd9d086d96573748c04cb9eaddd6837036d9e8196960dafb3b647e6dfeffc8e3f751fa23abd0bd1c966cb743a1e862ec2ce2ce80f71f516f46e6ddf79fe6ec4bd6782c600b23c3619ab79fc08f25c57e561e7d8ff00201f7344ee6ee4b35b2667a76666e50e8c641fd5bb61cc311c8d666e0f7967c3d0c60712dc170945873bb25cd60f9a21dad22dc2f99739b82f5768f7fe47697b1afdca76410c93a6746cc0ce8250feb9e929f0b7a29b321bf75911d1dd61b893d0718504705ca1bfbe1a57a4b9febfe4fae63fae25cdddd061c1f33dece3a774cc78e82eeb0f30c39afbdfc19665a26c88661cda61d4c9ed76c1e837e9325c86387fc97cb63328f99c8d8ef79b66fc1920838422e19722e2be60b2ce8ecb9b2877cfe11083208e84f3f1bc9cc30b17f3ab8e23da77fac7f88be783ff0067cca52e63bd9c4f46661cf36717741cf4739f23743973e79037db238fdc0c1fe75fe854bb4871709f6c369cb1145943d711d79778730b21bd8d8ba6a2fd0ac1820870977e14d8d233c663fe2f3fa8d7f7d2a7bc36cbb579867b74c8327b4f7875f7fe99f6b4e0a66e9797edb39279a959b97d88a3465b6777478d46090e568778c3dc30996c6f241079912e40acc3d33f2a38b82cfa81d6877c30b66c50319b8e0dcd36c4726e3fb9c2bb6dc643fe293fe73fae3a5cbcc33ded94638f4313f01f124336d933e6073fd43b4a14f90787ececcf5db4c3e20971ee440e63d621c4bf7c7134fd8597e01ce9cfe8610e82e65e8c99153fa82dc146f1d577e7dc62884d7804f2f7788507211391e12e384f571e1b398f6963b8a8c85bb996aff0fb4512d9673979866368c2d9f5ceab84377c683d977e42c5ff00fa23fa248ead73c6f959fb5c9ca6725e5e8301de1d62752d14390fc2c37790739c5e039e89ab278f1d0138f9636e26221cf8773d6c3d9d5dadd767b3cfa65aa5c9d44f81fe111be41ffb77f4af12f4eae5908f1f72593d3cd9d0e1985ef2385ed66fee83703c11c9bfd578fedbe2198bd7b132ec3c908f6ede687ecb5cb05d0cb1d080bd827277c5e7481388b9f077d90ddb988f7cfa43fb8cd6c2ee079df8266740a03b8f059cc2e1cf313a9f3139e9e69bfe1fe9367cde894b996e1f48e5a4f821e2163f14f3009b76ae02465fb821399aff0056fabbc0e0cdc192065d2f0f796a8c1367faa16e4a06c45b2bb2915113f645a3db1ba9e4fc8d9faf762639ed8bc0dc8971c002723c6eed8a3081f1c9b37964eb3af89a05de775e28cf843a0ff835fe9cfeb8e97cc8bba666f7b585dc7d59073d4e990cd8ea4e5a5fbbb2e11dcfd9c1b23856e99cf64434432fe989c17383769e4755ae7a8cea5b84910c812b373db7eaf6ac990400dda6050bc6bddbbb610bedf82e1172ddd603e6ed5d89e9fcc11760d6d23cb29f2c8d667b32c225ed0bd3a78b2db6de8fbb63bcf23d7290eef137b5f07960a31839c230d4300bdc537fa9bf2f6bcf470df70c2187a0c3d223933c6ecf0c0d6039b87c4a8be69eafbbbae42e03f1d0763f7f9afd53fbe2ed3eeee9729794cae6bb78b99bc9d14e9b6db1d206e458329c0bc2f636e1ff00b66c9bff00e0f9669bdec409e0e26bad76cb5f011d0b6deb66717349e21899798803729df3e0c9e8bb5f7777e9f9a267941b87ef3e5bbba595c719e8b058bd37f20e87201dc6cd9edbf4b3cefdcd1726dbed8feadecef0cfb5bf8170e86cf12e7f5d3a7d53a9e0bbaee94893c0bcdbf9b2f616ff006a77067c5eeedb67d13fa132fe274233072c49e30370158ee383e0dc470f73ff0082d5556abde589eaf5d0e8445b6135e49379db5f7c46765c9d089b66198f99f2fafcff00eecb87dcf9b9ec9c9e879119e116b1b673376dfc0b6db6da2bb4b810d876d8f3f896f40ec79bcaf719d2c60beee2ce5d2de7d4badf3777ebf35fd8cf7a2ba171bb444385258aa0062aec92a39d1bcf43a36f42b094b8b4a4e0d17e727b87afcbb6c4798dc0d3206ec2f795b89c46ee245e3655c0fbdbfd4fcc6c739adfc09d63106f7226fcb960f807fdb7343cb13a6f4cbc9636d91773f5d07810c0feec1cfb87e0dbf81b8a1185379789135861a438f424b255c1fd91eefccd8faffbb6c66f594f89e6de5964d0ef61ea539e7da0d12085e22d74186ce8fb8b631006cb136e0c97087e4445e39ee58edc00e2196325ac705e496f6e86d9cc72dfd4fcf62f466eb794ba1f30dc43258b8c6eedb33331d00db13263de65f0c853dcbb3d710d74db65fc36e128220dac8cc864d985c05bccba1725ce0f8fa1f9e9fd1ff57273bca6192d9752c641b0ed1cb77246c7a0d1862119e9bc391155e3ff0066e25bd37a6740886e0c2cb4f7719f72d0b07cde3a2f7d0f2dfd2dbfeafcc17e9cfea5abac3a1e64b6176f61627794efbe84c6cb188c44d981caec3edd8cd96db7a10742db902dba238c462c2017921ce922356d9c6de3d0ed03ce5fea2fe6f1b29eafc376cdd96973ed06af44e2b24b83dec177939999d3410db00cb39bd8b7a1d018836e5b165124dc9612721d667c9cd98655e828328375d4c19778f8883fafcd93dd173d765ca3cecdc6ccdf1ad27028713a678b3bf1651be6cd26b32db639103d1180357ea41816b843ce11a8cf8e9bd71c7261d63217bf45238c72c6998fc0e4b02e3d07c2e59362187f248a7714b04ea9ea0cd744a6e5bd0f30ed91df233cdc133a9499379263b98a048cb61ba40a10bde5722b0cac202f6ce80e3b4c7164044078909a1cc12a8391f4caa5555d62bcfae8c674676791a0fe5b2f8cfef89eaef4f9dc9e81c373cf4c3e698cd960f22c6922e6db96cbc4dca16c79bb76ab3a27bec29d67809b4ea4395ed61cc176a493a15e21a00b0d6919244d707820727db386f77a0ce8671613927c9f9679fe266b2eb32f10e3b5a401aae0406621daf1dc2170838f13824adaf4e6cde87a0dc0cc3c40ce2d8ec8133d321c58cb788f27611765c2ff006bfecb03edfd022ce088ddfd0f19a8febf2ec5d9e9709c2716e6112139c7ee27000f89ea60d8e04360f7704e674c82ec49727d4b7a22bc778b91e2111d0d86d8472c6e0c8f9bb87c2bf5e48c70a3ef5db9fe8f7ab80b2b1f93c3f6bd473d1dd6df98741a0ff428e4f83fd8366c12d7a0c32839859d1334b27be93a24d2d85966c11b985d239141b0e48d1ce4b04c84144240dbe9677aa71d2e77e419ea36db6d6f4afc0dddf20fda13dfa9ff00459d392db84ba73133d5b968675846c40388df3116769c6edd058664ef216a75d06f139c7cc0fa10f1d67398a3f2667eb773d55e81dba2fc543fb1093d933a034bbdd123723bc604f2dd9cb61e2ff6a476e616c5ef62e7a3a819d59d3ce4d3e6fe8244869683e8e8cc87e0f1efeb9fc7ffd9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` varchar(8) NOT NULL,
  `nama_dosen` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `nama_dosen`) VALUES
('FST02001', 'Heru Saputro, M.Kom'),
('FST02002', 'Noor Azizah, M.Kom'),
('FST02003', 'Danang Mahendra, M.Kom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `nama_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kapasitas`, `nama_guru`) VALUES
(64, 'sobat ku', 12, 'wahyu'),
(76, 'mawar', 19, 'endah'),
(565, 'gu', 54, 'huhu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` char(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `jurusan`) VALUES
(2, '171250000204', 'YOGIE FERYUNDAKA', 'LAKI-LAKI', 'SISTEM INFORMASI'),
(3, '171250000205', 'YOGA AJI HERLAMBANG', 'LAKI-LAKI', 'SISTEM INFORMASI'),
(4, '171250000200', 'GALIH WICAKSONO rs', 'LAKI-LAKI', 'SISTEM INFORMASI'),
(5, '171250000201', 'ADETYA RATNA DEVI', 'PEREMPUAN', 'SISTEM INFORMASI'),
(6, '171250000202', 'SAFITRI DAMAYANTI', 'PEREMPUAN', 'SISTEM INFORMASI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makul`
--

CREATE TABLE `makul` (
  `kode_mk` varchar(6) NOT NULL,
  `nama_mk` varchar(25) NOT NULL,
  `sks` int(1) NOT NULL,
  `kode_dosen` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `makul`
--

INSERT INTO `makul` (`kode_mk`, `nama_mk`, `sks`, `kode_dosen`) VALUES
('MKW001', 'PEMROGRAMAN WEB', 3, 'FST02001'),
('MKG002', 'GIS', 3, 'FST02001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`kode_mk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
