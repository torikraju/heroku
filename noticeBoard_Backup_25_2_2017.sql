--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contact_us; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE contact_us (
    id character varying(255) NOT NULL,
    date bytea,
    email character varying(255) NOT NULL,
    message text NOT NULL,
    name character varying(255) NOT NULL,
    read boolean NOT NULL,
    subject character varying(255) NOT NULL
);


ALTER TABLE contact_us OWNER TO postgres;

--
-- Name: notice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE notice (
    id character varying(255) NOT NULL,
    date bytea,
    message text NOT NULL,
    title character varying(75) NOT NULL,
    userid character varying(255)
);


ALTER TABLE notice OWNER TO postgres;

--
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profile (
    user_id character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    contact_number character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    photo character varying(255)
);


ALTER TABLE profile OWNER TO postgres;

--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_roles (
    user_role_id character varying(255) NOT NULL,
    role character varying(255),
    userid character varying(255)
);


ALTER TABLE user_roles OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    userid character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    enabled boolean,
    password character varying(100),
    username character varying(255) NOT NULL
);


ALTER TABLE users OWNER TO postgres;

--
-- Data for Name: contact_us; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contact_us (id, date, email, message, name, read, subject) FROM stdin;
ff8081815a72234e015a7271fc640047	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	CarmenTPark@armyspy.com	Eros justo mauris rhoncus. Nonummy ad gravida nisi. Proin non nonummy sagittis. Fusce volutpat sit imperdiet elit arcu et at. Ipsum wisi ligula adipiscing nulla.\r\n\r\nMaecenas magna libero iaculis. Sit duis risus vehicula. Convallis vestibulum qui fusce. Vehicula vivamus vel velit. Lectus erat cras maxime purus leo aenean nulla integer.\r\n\r\nJusto sed lacinia con. Id luctus eleifend ac. Ante risus mauris sit assumenda molestie mauris quam. Placeat pellentesque nec augue. Habitasse nascetur ac nunc sagittis.\r\n\r\nNibh massa mollis et. Etiam ullamcorper accumsan lacinia. Ipsum pharetra sem sed pulvinar con pede congue ut ut luctus eu. Interdum vestibulum ac nulla. Nec in ultrices integer. Eget varius ut leo. Laoreet congue elementum sagittis. Neque eu nec a nulla tortor lacus gravida tempor sed metus gravida. Facilisis lobortis ante id. Libero at consectetuer posuere sed sapien libero nec. Tristique pellentesque eget ligula. Ullamcorper vel in eget. Sed potenti tristique dapibus elit quam ac.	Carmen Park	f	Eros justo mauris rhoncus.
ff8081815a72234e015a7272bb050048	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	RobinFJones@teleworm.us	Arcu semper proin quam. Ultrices diam dapibus leo rutrum fames enim morbi. Inceptos justo cursus ut. Sed vivamus velit at. Vestibulum mi tincidunt pellentesque amet lacus enim eleifend lacus rutrum mattis enim. Hymenaeos sit vitae risus. Nisl a etiam euismod. Malesuada nisl integer velit. Donec mauris libero nulla natoque arcu.\r\n\r\nSed in condimentum nec. Eu turpis id accumsan. Arcu at velit libero. Eros dictumst sapien vel. Augue tortor sit vel dolor libero varius sollicitudin turpis.\r\n\r\nDictum ut sollicitudin volutpat condimentum praesent dolor amet. Tempor elementum tempus proin. Tristique eget nam id. Luctus at non lectus. Convallis nullam est ullamcorper. Sed velit dictumst litora urna consequat metus tellus. Quam malesuada dolor eu. Ante nec vel nunc. Venenatis dictum et a vivamus magna velit amet justo ipsum.\r\n\r\nAliquam quam porttitor mauris. Justo nibh accumsan purus. Lorem leo risus nibh in diam a senectus. Nunc sed sapien vulputate. Arcu feugiat morbi nulla etiam.	Robin Jones	f	Arcu semper proin quam. 
ff8081815a72234e015a72734a720049	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	JanetADelatorre@dayrep.com	 Erat leo quia nec. Non at dictumst mi. Erat at ante volutpat. Quis turpis orci mauris nibh.  Mattis hendrerit tortor porttitor. Neque magna vestibulum amet. Ultricies justo lacus ligula. Sed suscipit posuere luctus. Vestibulum et quis urna erat quis amet sapien odio.  Pharetra sed dui fringilla. Diam consequat et integer sodales accumsan nibh rutrum. Quis dolor orci neque. Leo diam amet morbi pulvinar wisi sit sit. Consequat cras magnis ante. Dolor diam aliquet wisi. Cras gravida velit ut potenti magna tempus sed. Nec ornare aliquam mi mauris vehicula feugiat nec. Quam lectus purus porttitor. Maecenas suscipit nunc curabitur. Ac sit lacus sociis. Dui aliquet morbi nostra ac elementum nulla velit. Quis porttitor consequat dapibus etiam lectus magnam.  Vestibulum dui justo vivamus. Nam mauris vel in. Condimentum a cursus in. Pellentesque vulputate tortor vestibulum amet commodo integer dapibus. Fusce mattis suspendisse adipiscing pede.	Janet Delatorre	f	Elit velit vehicula mauris sed id volutpat risus.
ff8081815a72234e015a7274eb9e004b	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	JackieGMcGuinness@rhyta.com	Dignissim mauris justo netus. Ultrices interdum ante rhoncus. Ipsum vitae morbi convallis. Mi reprehenderit montes imperdiet. Interdum nulla id id velit blandit at ut turpis.\r\n\r\nSit curabitur aenean arcu. Neque eu orci sed. Est amet nec sed. Vel et imperdiet aliquet orci eu et in. Pellentesque habitasse saepe sed commodo.\r\n\r\nDuis class nulla quisque quisque phasellus fermentum erat. Sodales ullamcorper donec elementum. Quis lorem viverra ac. Pretium aliquam integer lobortis. Per nullam a ut enim.\r\n\r\nPorttitor velit commodo morbi. Eu tortor occaecati lectus. Tellus class montes nibh consectetuer vitae consequat viverra. Tempor et non quis. At magna class integer. Cupidatat justo vivamus dolor maiores wisi sed elementum. Fusce eget pede diamlorem. Dis in fermentum dictumst. Ipsam purus condimentum est ut pulvinar ut dui. Nostrum mauris duis nisl sagittis suscipit aliquam aliquam. Ipsum arcu lacinia euismod. Turpis molestie rhoncus eget erat nullam augue quam. Augue interdum sollicitudin sit magna lorem suspendisse.	Jackie McGuinness	t	Dis in fermentum dictumst. Ipsam purus
ff8081815a72234e015a72742a62004a	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	PedroRBlasko@teleworm.us	At mauris non suspendisse. Euismod condimentum vitae egestas neque tempus lectus suscipit. Donec aliquam sed tincidunt. Nisl luctus sed nam. Elementum mauris morbi amet id.\r\n\r\nNibh molestie eros molestie. Vel consectetuer massa nibh. Justo nec fusce suspendisse. Sed in aliquam nisl quis magna eu in. Molestie et nibh eros. Quis augue lacinia nunc curabitur laoreet libero dis aenean con tincidunt aliquam. Ante lorem massa vehicula. Ultricies eget libero dignissim. Tortor lectus mollis faucibus nisl velit.\r\n\r\nNec taciti turpis in. Occaecat nec sit velit. Congue turpis scelerisque vitae. Ullamcorper ridiculus lobortis fringilla. Mauris et wisi amet amet habitant sed lorem maecenas.\r\n\r\nPulvinar pretium etiam elit odio tellus nec dapibus. In praesent vestibulum rutrum nec vel eros risus habitasse nullam ante condimentum. Porttitor sollicitudin leo amet. Neque non mauris in. Ullamcorper vel ultricies porta. Erat tempor sed metus. Luctus mi diam mi. Sem rutrum sodales augue. Odio penatibus quisque a nunc diam.	Pedro Blasko	t	At mauris non suspendisse.
\.


--
-- Data for Name: notice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notice (id, date, message, title, userid) FROM stdin;
ff8081815a72234e015a722e92760002	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Odio a vivamus quam. Aptent felis sed a. Ut consectetuer duis donec. Orci eu nunc risus enim porttitor placerat proin. Montes id sed pellentesque tempor.</p>\r\n\r\n<p>Turpis ante velit laoreet. Id montes sed nulla donec fugit ut cras. Justo sed aliquam a. Dolor semper sed id. Arcu tempus id dolor eros.</p>\r\n\r\n<p>Donec laoreet totam pharetra. Fringilla duis elit ut. Commodo eu scelerisque et. Fusce integer luctus mollis. Mauris donec mollis at non justo maecenas repudiandae sapien.</p>\r\n\r\n<p>In nunc phasellus eligendi mus vestibulum pede nunc. Libero purus morbi quam vel volutpat nulla est. Imperdiet fringilla justo duis. Mollis integer a vulputate. Bibendum eleifend potenti posuere. Dui ad neque integer lorem ultrices orci mattis. Pede justo ante quam porttitor urna sollicitudin rutrum. Pede dolor in justo. Adipisicing turpis convallis est. Nulla est scelerisque bibendum. Integer sit sagittis sed dictum leo nulla suspendisse. Vel nunc aliquam etiam. Erat odio magna magna lectus morbi neque.</p>\r\n	Odio a vivamus quam	ff8081815a72234e015a7229c4170000
ff8081815a72234e015a722f47ba0003	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Tortor nunc sed mollis vestibulum nullam maecenas elit. Nibh quis et aliquet. Felis at accusantium quam. Lacinia turpis nonummy a curabitur non lectus mauris. Diam nostra lacus condimentum. Dui sodales tempor arcu. Vel sit amet tristique amet donec tristique nulla. Vestibulum nam feugiat mattis. Ut enim sapien eget senectus urna.</p>\r\n\r\n<p>Blandit vel lacus nec. Id cras wisi amet. Ac commodo eligendi curabitur in massa turpis morbi. Justo urna arcu lobortis. Dignissim vel sapien ligula commodo.</p>\r\n\r\n<p>Velit nulla quis etiam. Quis vitae mi ac. In tellus con eleifend et amet pulvinar nibh. Ac curae eleifend sunt. Arcu lobortis sed donec in.</p>\r\n\r\n<p>Fermentum amet facilisis orci. Ac potenti aenean aliquam. Accumsan placerat vel luctus diam egestas in sapien quis curabitur quis convallis. Sed lorem dolor voluptatem. Neque mauris convallis massa. Elit consectetuer est in. Pretium ridiculus est varius vel consectetuer elit mauris. Nonummy sapien viverra ante. Dui sed suspendisse sodales sit lacus.</p>\r\n	Tortor nunc sed mollis vestibulum nullam maecenas elit	ff8081815a72234e015a7229c4170000
ff8081815a72234e015a722f8ec50004	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Nulla mauris nisl aliquam. Optio aliquet semper pellentesque. Senectus turpis bibendum cras nec porttitor sit nec. Lacus proin sit vel. Non enim integer in ullamcorper.</p>\r\n\r\n<p>Magna vehicula tempor volutpat. Nulla vulputate semper vivamus. Ipsum sem mollis metus. Arcu diam mauris pellentesque nunc id neque litora. Lectus malesuada et laoreet purus.</p>\r\n\r\n<p>Neque eu pharetra ut. Nulla fermentum in odio. Nulla pellentesque pede tristique. Gravida reprehenderit nam mi. Ut velit etiam duis. Orci quam justo venenatis eu dolor mauris lobortis. Aliquam magna mauris varius. Gravida in ultricies etiam vel lacinia felis enim. Inceptos metus quo nisl ut mauris consectetuer pellentesque. Libero ut sapiente ornare feugiat aptent praesent at. Ut elementum lacus magna. Orci id dui a sagittis vel nibh congue. Condimentum sit laboriosam nullam mi auctor leo.</p>\r\n\r\n<p>Ac id nunc aliquet. Ullamcorper pede commodo eu suspendisse est semper eros. Placerat sodales duis sit. Justo phasellus facilisi consequat. Morbi nibh volutpat neque consequat.</p>\r\n	Nulla mauris nisl aliquam	ff8081815a72234e015a7229c4170000
ff8081815a72234e015a7231ff060007	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Ut eu voluptatem etiam. Purus imperdiet lorem mauris. Orci lorem ligula duis consequat nibh fringilla odio. Nulla nascetur vel consequat. Donec scelerisque morbi pede sit.</p>\r\n\r\n<p>Phasellus lacinia nunc purus. Ac id suspendisse sodales amet varius ac nulla. Enim pellentesque nec in aliquam sapien rhoncus dui. Vivamus vitae pellentesque montes. Erat ligula leo orci. Cras dolor a id. Tempor est massa mauris congue sed diam velit. Porttitor ut ac phasellus. Aliquam malesuada vel vestibulum in scelerisque.</p>\r\n\r\n<p>Orci natoque aliquam ipsum velit a metus ac. Maecenas sed veniam a. Ut duis lectus justo. Mollis tempor wisi id. Aliquam vel ac impedit wisi.</p>\r\n\r\n<p>Penatibus adipiscing massa sit eget enim in ut. Scelerisque aliquet sed nulla. Dignissim aliquet natoque sociosqu leo neque vel et. Incididunt amet turpis pede. Non purus et nullam. Cursus erat dictumst dui. Risus bibendum quis sit aliquam enim imperdiet pede. Class etiam praesent at. Rem ipsum sit tincidunt turpis pellentesque.</p>\r\n	Ut eu voluptatem etiam	ff8081815a72234e015a72309c9b0005
ff8081815a72234e015a723245a40008	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Convallis omnis feugiat imperdiet. Eu at mauris donec. Ac tristique tellus sollicitudin. Et laborum ridiculus massa tortor pellentesque wisi nulla. Commodo turpis maecenas at condimentum.</p>\r\n\r\n<p>Velit accumsan pellentesque sit. Lectus facilis consequat fuga. Est vehicula aptent tincidunt. Elit et tristique ligula. Turpis metus et lorem sapien elementum montes laboriosam pede.</p>\r\n\r\n<p>Libero nisl sollicitudin vel condimentum fermentum sed phasellus. Vitae in dui sed. Egestas eget congue egestas. Pellentesque leo donec euismod. Vel dis tortor lacus euismod.</p>\r\n\r\n<p>Habitasse blandit mi id. Lobortis ac eleifend enim pede metus et quisque congue ac nullam torquent. Ac gravida in justo. Torquent a dolor condimentum vel tincidunt ultrices quisque. Magna fermentum sed proin elit porttitor elit et. Ultrices dui varius sit. Amet pellentesque sit pharetra. Fringilla nec turpis eget. Integer ut cras lobortis. Erat justo magnis lorem. Erat feugiat sem donec amet nisi suspendisse odio. Augue nulla urna sapien. Diam nunc sed dapibus tortor gravida consequatur.</p>\r\n	Convallis omnis feugiat imperdiet	ff8081815a72234e015a72309c9b0005
ff8081815a72234e015a723292ed0009	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Metus urna et vestibulum. Vestibulum diam congue eget. Eget morbi risus dolor pellentesque suspendisse aliquet esse. Bibendum dapibus eros posuere. Erat adipiscing aliquam elementum phasellus.</p>\r\n\r\n<p>Eu sed diam aliquet. Quisque eu iaculis ut. Curabitur placerat ultricies gravida. Mauris metus arcu egestas. Eget ante tristique nibh. Leo error ut massa turpis praesent eget ac. Praesent tincidunt semper duis. Ornare integer volutpat pellentesque nonummy nunc venenatis lacinia. Fusce pellentesque maecenas magna turpis accumsan pulvinar quis praesent aliquam.</p>\r\n\r\n<p>Elit dui urna felis. Duis iaculis eget duis. Nonummy leo feugiat in. Accumsan odio nulla dolor porttitor magna id lorem. Dolor massa elit rutrum erat.</p>\r\n\r\n<p>Enim maecenas elementum mauris. Placerat malesuada feugiat vel. Dictum viverra nec augue. Risus vel elit posuere. In vestibulum libero euismod. Ipsum luctus ultricies sed id tristique in potenti. In nunc justo mattis. Sed massa dolor pellentesque. Commodo vestibulum velit et libero pretium in donec placeat at ultrices at feugiat mollis.</p>\r\n	Metus urna et vestibulum	ff8081815a72234e015a72309c9b0005
ff8081815a72234e015a72351392000c	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>At scelerisque velit nostrum. Quis libero sed orci. Proin ullamcorper ullamcorper ipsum nullam diam sit integer. A erat vel enim. In varius augue purus. Lacus eros laoreet in dolor massa faucibus sem. Maecenas id ac metus. Mauris suspendisse dapibus libero. Cursus nonummy nec id pulvinar mi imperdiet hendrerit nam nulla.</p>\r\n\r\n<p>Aenean euismod aliquam habitant tortor arcu autem duis mi quod et et. Vitae venenatis blandit sem. Proident quisque con dis. Luctus nunc pede pharetra. Sit mauris duis nam. Sem eu deleniti iaculis dui sit odio turpis. Scelerisque vivamus fusce auctor. Quis metus eu augue. Vivamus ornare justo qui at nulla.</p>\r\n\r\n<p>Sed sed quisque wisi. Rutrum nec luctus nulla. Hymenaeos gravida aenean ac nec in ut semper. Nisl tempor lorem accumsan. Donec vestibulum semper lacus orci.</p>\r\n\r\n<p>Massa ornare placerat nec. Vivamus donec ligula pharetra. Nec amet volutpat felis. Imperdiet ut molestie eleifend. Quis tincidunt blandit libero dolor accumsan et massa diam.</p>\r\n	At scelerisque velit nostrum	ff8081815a72234e015a7233e4b6000a
ff8081815a72234e015a72359af7000d	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Morbi quis pellentesque ante. Eget ligula sint sed. Ipsum aut et aptent. Lorem id vivamus nunc a lectus enim urna. Ut neque dictum pellentesque rhoncus.</p>\r\n\r\n<p>Lectus nec massa sem. Amet eu dictum ligula. Nullam integer eu euismod. Eget posuere urna arcu. Necessitatibus nec eleifend praesent volutpat in sem nulla non.</p>\r\n\r\n<p>Urna id et tristique. Etiam sem rhoncus sapien. Risus dui class a quam sed fringilla accumsan. Id aliquet vehicula vel orci dictum urna egestas nec natoque natoque id. Dignissim pharetra maecenas pharetra. Sagittis bibendum dolor integer. Libero sed adipiscing vehicula maecenas porttitor phasellus tristique. Euismod facilisis a varius. Ac velit tempus in. Ut vitae in pede. Ut luctus lacus ipsum. Proin lorem dolor habitasse magna iaculis nec libero. Amet ultricies sed rutrum nec ullamcorper eu.</p>\r\n\r\n<p>Eleifend integer turpis blanditiis et non arcu a. Pretium vivamus parturient nec. Gravida sodales arcu ultricies. Imperdiet tellus curae in. Elit lectus mauris scelerisque eleifend.</p>\r\n	Morbi quis pellentesque ante	ff8081815a72234e015a7233e4b6000a
ff8081815a72234e015a72362049000e	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Sem donec turpis erat. Nunc aliquam amet in non vel ac massa. Suspendisse diam nulla nunc. Ligula magna a nostrum. Lorem elementum aliquam pede aliquam.</p>\r\n\r\n<p>Dui lorem elit nunc. Quisque orci et odio. Per porttitor semper sed. Pulvinar eu praesent vestibulum. Sed est in wisi elit ligula venenatis suspendisse libero.</p>\r\n\r\n<p>Iaculis turpis a sed. Enim varius ipsum ut sunt rhoncus amet pede. Commodo neque eget pariatur. Euismod nulla cursus in. Magna commodo ullamcorper in. Consequat quisque est dui. Accumsan vel venenatis integer con ultricies volutpat ullamcorper urna anim diam odio. Earum vel vel id. Etiam nisl purus ut in pellentesque.</p>\r\n\r\n<p>Nibh ante eget duis. Est eu sagittis ipsum eros eu aliquet lectus. Pede porttitor nulla lorem. Elementum sit semper vehicula. Ut vel sed tincidunt feugiat sociis morbi eu. Metus sodales facilisis elit fusce magna sapien vestibulum. Praesent integer habitasse ut. Mauris vivamus amet sodales. Dui mauris quis vitae duis diam.</p>\r\n	Sem donec turpis erat	ff8081815a72234e015a7233e4b6000a
ff8081815a72234e015a723c6f4b0011	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Luctus proin tempor habitasse. Vulputate natoque id ullamcorper. Pellentesque leo nec tellus. Pellentesque libero magna donec est dapibus lacus mollis. Eu et vitae curabitur id.</p>\r\n\r\n<p>Massa faucibus nec lacus proin tempus venenatis dolor neque dolore mauris vestibulum. Habitant ac con pellentesque. Etiam nulla odio sed. Tincidunt duis ante elementum egestas nullam morbi vitae. Sed faucibus suspendisse commodo. Dui leo donec neque. Ante porta aliquet sagittis. Sapien sagittis eros faucibus. Posuere ornare accusantium gravida ipsum et tincidunt turpis. Leo amet pretium leo. Ligula a iaculis nec suspendisse pariatur est nec. Sed at eros neque. Sed dui duis suspendisse blandit adipiscing tempor.</p>\r\n\r\n<p>Tortor turpis pulvinar curabitur. Ullamcorper id malesuada fringilla. Accumsan pede vehicula mi. Sed nullam ut magnis blandit cras elit mauris. Cras scelerisque con aliquam velit.</p>\r\n\r\n<p>Vestibulum etiam et platea lacus est ut bibendum. Non donec a sed. Ut bibendum rutrum augue. Non vel praesent tincidunt. Id enim id pretium maecenas.</p>\r\n	Luctus proin tempor habitasse	ff8081815a72234e015a723b38aa000f
ff8081815a72234e015a723cbd360012	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Consequat et ut vestibulum dui mollis dui tortor. Porttitor duis vivamus eget. Quam vitae sed quis. Eu nec ornare ornare. Morbi ipsum suscipit vestibulum nec.</p>\r\n\r\n<p>Inceptos vestibulum parturient massa. Aptent quam sociosqu enim. Per at vitae a fusce penatibus et lectus. Praesent sit mauris elit. Eu lacus ut vulputate vestibulum.</p>\r\n\r\n<p>Placerat a magnam pellentesque. Aliquet sem ligula fusce. Porro at ipsum ac. Fermentum nec aliquam pulvinar. Orci vitae gravida faucibus in nulla non nihil. Mi in proin fames pellentesque consectetuer diamlorem eget. Nec rutrum vulputate ipsum massa magna velit habitasse. Ut vitae vehicula lacinia. Integer pede dapibus et amet eu.</p>\r\n\r\n<p>Nullam mauris leo eu. Fermentum torquent massa mattis. Quis sagittis duis sit incididunt vestibulum pede vel curae nam nascetur habitasse. Ac malesuada euismod orci dapibus id semper donec. Rhoncus sapien facilisi vitae. Enim vitae ut sollicitudin. Urna ac mauris tristique. Nibh netus risus urna. Nisl vitae sit ut dui wisi.</p>\r\n	Consequat et ut vestibulum dui mollis dui tortor	ff8081815a72234e015a723b38aa000f
ff8081815a72234e015a723d10fa0013	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Lacus non nam wisi. Morbi ornare sed aliquet. Montes quisque amet mi fermentum tempor ipsum est. Dolor pellentesque ac arcu. Dictumst tempor nec cras auctor.</p>\r\n\r\n<p>Mauris odio aliquam convallis. Eleifend posuere fermentum duis. Donec molestie eget amet. Magna posuere lobortis donec. Vitae purus molestie ornare. Rutrum pellentesque elit leo nullam ullamcorper egestas dapibus. Consectetuer fusce sit leo. Imperdiet velit distinctio tortor. Tincidunt adipiscing purus dolore vestibulum ultricies urna tincidunt vel condimentum arcu in. Ipsum ac consequat a. Adipiscing mauris in quam egestas convallis ac imperdiet. Doloremque ornare neque tortor vitae scelerisque vestibulum in. Dolor at sapiente tempor quisque velit amet.</p>\r\n\r\n<p>Nunc justo duis risus. Ultrices donec consectetuer vel. Pellentesque ut aliquam phasellus. Ut risus erat eu egestas sem enim eleifend. Dolor donec sapien nibh posuere.</p>\r\n\r\n<p>Diam mollis sed orci. Tellus velit tellus et. Amet ante proin placerat ut eu mauris sollicitudin. Per in aliquam massa. Mauris at fermentum erat eget.</p>\r\n	Lacus non nam wisi.	ff8081815a72234e015a723b38aa000f
ff8081815a72234e015a723f7eca0016	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Quisque nonummy in diam. Libero in quia sit vitae dictumst vulputate tristique. Mauris nec rhoncus nulla. Hymenaeos egestas vel felis. Massa enim quam proin volutpat.</p>\r\n\r\n<p>Sem ullamcorper facilisis nunc. Libero lacinia vivamus varius. Dictum id quisque metus. Id nisl mattis rhoncus. Praesent at aliquam eros. Et sed nulla vulputate ante diam feugiat eget praesent porta consequat lacinia quis odio tincidunt aptent. Justo tellus integer aenean. Mus enim eget consectetuer. Nullam vitae id integer erat urna purus donec. Turpis lacus in faucibus. Sociis congue erat aliquet. Ut erat arcu amet. Quam bibendum a vitae ipsum ullamcorper wisi sollicitudin ipsa mollis in.</p>\r\n\r\n<p>Eros suspendisse nisl erat. Nostra pede facilisis doloremque. Ultrices elit est turpis. Enim elit in purus. Ut tellus proin rhoncus nec felis leo adipiscing arcu.</p>\r\n\r\n<p>Vivamus et lobortis phasellus. Mollis gravida fringilla ac. Magna morbi in rhoncus. Quis luctus sed vel. Nulla nec nec etiam maecenas fermentum leo nulla amet.</p>\r\n	Quisque nonummy in diam.	ff8081815a72234e015a723e462f0014
ff8081815a72234e015a724ff58a0017	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Fames risus accumsan id. A in id ligula. Nulla wisi feugiat metus. Egestas in ut morbi massa quis sit velit. Posuere accumsan in pellentesque vitae.</p>\r\n\r\n<p>Nulla ut ullamcorper ut. Leo amet consectetuer maecenas aliquam id urna pharetra. Parturient laoreet diam molestie. Rhoncus posuere praesent pellentesque. Neque eros faucibus orci at.</p>\r\n\r\n<p>Mattis sit mauris wisi. Quam ullamco molestie fermentum. Est laoreet quam dolor eleifend suscipit metus diam. Elit maecenas nonummy sagittis. Mollis posuere phasellus malesuada varius.</p>\r\n\r\n<p>Tortor feugiat vestibulum nisl. Nec et fusce imperdiet sollicitudin placerat rutrum eget. Enim diam lorem penatibus sociosqu scelerisque et iaculis habitasse ligula interdum sapien. Ullamcorper volutpat pulvinar et. Cras phasellus wisi hendrerit donec pede magna nibh. Sollicitudin justo posuere non. Id cras pede morbi donec lobortis ipsum amet. Risus non vitae lacus. In odio a urna. A pellentesque ut et. Libero euismod diam vivamus. Sit sed commodo libero. Faucibus fusce in neque dapibus et neque.</p>\r\n	Fames risus accumsan id.	ff8081815a72234e015a723e462f0014
ff8081815a72234e015a7250503e0018	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Et curabitur per nonummy. Ut nec nonummy ut. Velit nibh eu venenatis. Pellentesque leo lorem feugiat. Sit a cursus fames. Vitae odio lectus urna. Risus montes tincidunt penatibus. Eu sapien vel tempor iaculis et vulputate interdum consequat pulvinar elit ut. Praesent auctor enim in sodales purus magnis interdum feugiat mi.</p>\r\n\r\n<p>Taciti volutpat ultrices vehicula. Ac amet nec ac. Nam quisque porttitor eu. Eget mauris venenatis tellus sed lectus tempor erat. At mollis odio ornare mi.</p>\r\n\r\n<p>Blandit leo quis praesent elementum penatibus fusce mi. Dolor duis morbi suspendisse. At at sit ipsum. Duis est pulvinar massa. In penatibus dolor ante. Augue fringilla ipsum proin omnis dolor nunc quam. Bibendum vel quisque dolor. Erat orci iaculis mauris habitant vitae proin dictum. Sed pede ultricies pretium rutrum faucibus.</p>\r\n\r\n<p>A elit mauris ante. Dolor adipiscing sed sapien. Vivamus possimus in lorem. Ornare non praesent ridiculus. Minim eu exercitation ultrices ac non nulla odio suscipit.</p>\r\n	Et curabitur per nonummy	ff8081815a72234e015a723e462f0014
ff8081815a72234e015a72544be3001b	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Vel vestibulum et proin. Sed a fringilla quisque. Dolor turpis vitae nunc in netus id non. Morbi mauris condimentum sodales. Natoque per id dolore nulla.</p>\r\n\r\n<p>At quam praesent integer. Pharetra sed turpis at. Quis at fringilla semper. Pede urna sit tortor. Vestibulum fermentum fusce enim mauris aliquam in tortor wisi adipiscing ac eu. Ut pharetra maecenas suscipit. Ut nulla vel nec. Nulla elementum eu et. Nam quam magna nulla vehicula purus ligula ante eget mauris.</p>\r\n\r\n<p>Felis velit vitae proin id molestiae fusce dictum. Dapibus senectus vitae leo. Leo diam officia a. Fames nonummy fusce ultrices. Facere risus elementum scelerisque tellus.</p>\r\n\r\n<p>Commodo volutpat senectus rutrum tristique pede id aliquet. Auctor per viverra id ultricies felis erat arcu. Duis suspendisse placerat non. Cursus blandit ad ac. Et nunc in vehicula. Mi aliquam aliquam habitasse. Nec vivamus ornare nam. A ut non rutrum mattis aliquam eu adipiscing. Pellentesque nascetur sapien arcu vel ducimus.</p>\r\n	Vel vestibulum et proin. 	ff8081815a72234e015a72532e850019
ff8081815a72234e015a7254a75a001c	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Suscipit nullam libero faucibus vitae sodales maecenas egestas. Et ante eu quam. Felis nec dolor quam molestie eros eros morbi mollis massa turpis cras. Neque duis facilisis aliquet. Nunc molestie arcu mauris. In erat posuere et. Porttitor vestibulum pede vestibulum platea eu cras velit. Sagittis donec ridiculus nulla. Orci et velit libero. Vel sit amet interdum. Magnis a mauris sollicitudin. Eleifend vivamus sit habitasse. Cras ligula lorem lectus mi lorem eleifend ut velit aliquam venenatis.</p>\r\n\r\n<p>Pretium tincidunt consectetuer lobortis. Vitae integer elit quam ante risus habitasse venenatis. Dolor nec semper donec. Elit egestas pede sociosqu. Possimus integer massa vel justo.</p>\r\n\r\n<p>Consectetuer maecenas aenean congue. Enim libero a nec atque erat et et. Nam lorem commodo tellus. Sed nec nulla feugiat. Ut justo odio congue felis.</p>\r\n\r\n<p>At mauris purus praesent. Et voluptatem vehicula ac. Cras cras aliquet pharetra elementum vestibulum neque varius. At etiam mi ipsum. Ipsum etiam tortor massa ut.</p>\r\n	Suscipit nullam libero faucibus	ff8081815a72234e015a72532e850019
ff8081815a72234e015a7254ffd1001d	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>In nisl turpis maecenas quam nibh euismod sodales. A mauris donec pede suscipit id praesent proin nonummy morbi varius lacus. Dui imperdiet nonummy integer. Class justo pellentesque ipsum. Sodales aliquam in blandit. Mauris vivamus ut posuere. Nulla ut magnis tortor. Malesuada adipiscing nec ante. Vel a bibendum fermentum lorem ipsum.</p>\r\n\r\n<p>Mattis aliquam tellus sapien urna netus mi sit. Velit odio ante pretium. Blandit suspendisse sit tincidunt. Elit urna nulla pharetra. Congue ac libero aenean aenean.</p>\r\n\r\n<p>Sunt vel orci neque. Nunc sagittis orci elit. Quis nunc quis urna. Gravida class in vel. Varius magna imperdiet inceptos laoreet porttitor non dictum lobortis.</p>\r\n\r\n<p>Feugiat egestas in nibh. Vitae aliquet id ullamcorper eget orci ornare consequat. Cras tempor sit per. At lacinia ut magnis. Est ut leo eu. Orci massa auctor integer. Justo duis mi blandit. Gravida commodo pellentesque justo vel aliquam dictum molestie. Lectus et ut ut nec consequat in neque tortor ligula.</p>\r\n	In nisl turpis maecenas quam nibh 	ff8081815a72234e015a72532e850019
ff8081815a72234e015a7257717a0020	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Lectus mi condimentum volutpat. Non integer arcu elit pellentesque pellentesque rutrum potenti. Suscipit ut sit wisi. Lobortis massa mi at. Eleifend aenean sem augue consequat.</p>\r\n\r\n<p>Praesent diam arcu ac sed et in eu. Wisi nibh lectus varius. Scelerisque integer natus nec mi vestibulum non lorem. Ut tempus ut risus neque imperdiet dapibus ac. Odio commodo ullamcorper ullamcorper. Pellentesque amet et odio. Diam feugiat volutpat cras. Vitae nullam nunc class. Eu nullam vitae dictum wisi amet velit eiusmod. Integer ante a elit. Curabitur nibh id sapiente nonummy semper molestie egestas. Mauris cras in urna. Tincidunt donec erat vestibulum porttitor id mauris.</p>\r\n\r\n<p>Eget est dolor metus. Massa in suscipit feugiat dapibus mattis aenean vel. Posuere porttitor lectus in. Quis nullam volutpat nam. Primis sem laudantium fringilla faucibus.</p>\r\n\r\n<p>Vel mauris donec fugiat tristique facilisi sagittis justo. Sit imperdiet pede diam. Nibh amet fermentum a. Nam non scelerisque nullam. Adipiscing elit eget ut vestibulum.</p>\r\n	Lectus mi condimentum volutpat.	ff8081815a72234e015a725650f1001e
ff8081815a72234e015a7257cba10021	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Vel donec fringilla augue massa in suscipit quis. Morbi penatibus in sociis. Ultrices non donec elementum. Facilisis iaculis turpis ligula. Aliquam arcu elementum sem luctus.</p>\r\n\r\n<p>Erat duis vitae orci. Dui turpis commodo quam. Eros felis sed a. Luctus ullamcorper volutpat sagittis. Vitae dolor curabitur natoque dui mi purus mi. Rhoncus torquent ante lacinia. Est elit dictum tempus sit nec est mi. Nunc at eleifend sollicitudin. Posuere rutrum nullam a. Feugiat pharetra sit morbi eleifend mi commodo facilisis. Officiis nunc placerat vehicula tortor morbi purus fringilla dui sem vel cursus. Lectus malesuada dolor neque. Leo purus non in arcu phasellus semper.</p>\r\n\r\n<p>Erat ultrices orci sodales. Faucibus consectetuer rutrum a. Diam sodales dolor parturient cubilia aenean in tristique. Nonummy nulla curabitur nonummy. Nascetur nunc convallis nec maecenas.</p>\r\n\r\n<p>Placerat metus mauris augue vestibulum maecenas adipisicing augue. Hac ipsum venenatis mi. Sed elit maecenas pellentesque. Gravida et arcu sed. Sit luctus venenatis tristique dolor.</p>\r\n	Vel donec fringilla augue massa in suscipit quis.	ff8081815a72234e015a725650f1001e
ff8081815a72234e015a72581e2b0022	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Integer arcu vitae velit. Cursus tempor tellus orci interdum tempor ullamcorper dolor. Lorem dolor quam diam. Tellus gravida etiam id. Elit metus praesent wisi feugiat.</p>\r\n\r\n<p>Maecenas velit fringilla lectus. Duis eu ut senectus tellus euismod congue ac. Nam aliquam tempus at. Pellentesque wisi mattis imperdiet. Tristique nibh id at donec.</p>\r\n\r\n<p>Mattis enim amet eros. Rhoncus et nam urna. Ac eu proident lacus. Tincidunt felis quis elit. Odio sed quisque interdum. Sapien mauris orci vestibulum fringilla nec nec rutrum. Augue in condimentum sodales vitae proin sodales eros in bibendum wisi lacus. Cras sagittis gravida enim. Netus velit etiam ut proin porttitor nulla dolorem porttitor ornare in dictumst. Luctus volutpat eget wisi. Consectetuer donec dui ridiculus. Tincidunt mi hendrerit integer. Aptent mi lorem mauris hendrerit libero dignissim.</p>\r\n\r\n<p>Sed vel netus amet. Lectus a ipsum ut imperdiet tincidunt pulvinar amet. Quam blandit vel amet. Fusce justo gravida pulvinar. Risus eleifend leo dictumst torquent.</p>\r\n	Integer arcu vitae velit.	ff8081815a72234e015a725650f1001e
ff8081815a72234e015a725aa96c0025	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Nullam ornare orci id accumsan non cras morbi habitasse volutpat sed senectus. Pharetra in sapien tincidunt lacus donec erat odio. Id consectetuer rutrum in. Porttitor leo maecenas fringilla. Nulla molestie pede facilisis. Urna vehicula a laoreet. Mollis inceptos a pede. Mauris taciti eu convallis. Venenatis nunc parturient congue aliquam lacus.</p>\r\n\r\n<p>Urna non vitae maecenas. Porta ut ultrices ante metus nulla at sollicitudin. Quam nec dui pellentesque. Nunc scelerisque dolor maecenas. Viverra sed ornare justo vehicula.</p>\r\n\r\n<p>Proin tellus ipsum mauris. Sed aenean ut pellentesque. Sodales duis vulputate elementum. Vitae non dolor cras. Purus nulla ultrices consequat sodales imperdiet ac vestibulum urna.</p>\r\n\r\n<p>Orci praesent nulla purus. Suspendisse id lectus mollis. Libero molestie amet mauris. Enim wisi velit tempus. Ultricies a sem vel. Praesent commodo sed pellentesque. Nec potenti consectetuer vivamus. Fugit dignissim eget pharetra wisi praesent luctus turpis. Mauris sed vivamus pellentesque sodales eu fermentum eros iaculis tempus iaculis bibendum et vitae.</p>\r\n	Nullam ornare orci id accumsan non	ff8081815a72234e015a7258ab740023
ff8081815a72234e015a725af08c0026	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Nibh a libero nam. Nam aliquam sed dapibus. Vivamus vitae dolor sit integer ac id purus. Feugiat diam magna luctus. Felis sed nullam tempor. Eleifend a eu vehicula. Sit wisi velit nunc est mauris venenatis volutpat. Arcu morbi lobortis nullam. Eleifend adipiscing elementum morbi sit nec nibh ligula mollis neque.</p>\r\n\r\n<p>Curabitur nulla in fames. Neque lobortis porttitor varius. Lectus donec tellus pede. In ac ultricies vel. Sed vestibulum convallis quis enim nibh magna in. Dignissim sapien varius et. Tristique lorem phasellus eget dui amet venenatis ante. Mollis volutpat magnis in. Ipsum vestibulum felis ac habitasse dolor sit sed mollis pretium.</p>\r\n\r\n<p>Hendrerit amet augue pulvinar. Blandit sollicitudin eget eget nam natoque semper tincidunt. Pellentesque mauris euismod orci. Nisl tempus vestibulum lorem. Neque quisquam nonummy platea aenean.</p>\r\n\r\n<p>Interdum maecenas vestibulum elit. Consectetuer luctus hac at. Ornare urna ornare leo. Lorem non a ut. Ut libero elit ut molestie vel quisque placerat ullamcorper.</p>\r\n	Nibh a libero nam.	ff8081815a72234e015a7258ab740023
ff8081815a72234e015a725b457d0027	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Lectus sapien pharetra curabitur. Auctor sed sapien habitant. Id nulla ac ac. Eros sodales elementum tempor. Morbi semper interdum aliquet. Diam vestibulum porta curabitur. Duis maecenas tristique leo et mi vel neque venenatis commodo elit tempor. Quam mi mi nunc. Vel sem at montes odio auctor dui et. Quam condimentum vel amet. Est nulla quam ut. Congue ac turpis leo. Sed sapien consequat vestibulum fermentum risus et euismod vitae wisi eget condimentum nisl turpis mauris.</p>\r\n\r\n<p>Vulputate dis ut egestas. Urna mauris sed sed. Congue at vitae elit diam in sed id. Vel class curae tempus. Dictum vestibulum curabitur nulla vitae.</p>\r\n\r\n<p>Nisl proin deserunt a. Nascetur hac elit consectetuer urna auctor risus quam. Dui egestas dignissim tellus. Ut erat rhoncus et. Tellus nibh sed velit pede.</p>\r\n\r\n<p>Sed vel sit et. Malesuada magna ac lacus. In dolor et natus. Mattis mi pretium in. Sed mauris nam vel mauris maecenas vehicula ut posuere.</p>\r\n	Lectus sapien pharetra curabitur	ff8081815a72234e015a7258ab740023
ff8081815a72234e015a725d1453002a	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Nam ipsum sit id. Tincidunt in magna sit. Rhoncus ipsum pede magna. Quis interdum vestibulum risus. Eget ac tellus luctus lacinia integer morbi velit turpis.</p>\r\n\r\n<p>Justo vulputate non orci. Tempor hendrerit arcu accumsan. Aenean erat nec pede. Id eros sunt cras. Pulvinar fringilla viverra nunc. Leo quis cursus neque. Vitae eu nec a cras et libero neque. Torquent pellentesque phasellus justo eros integer curae inceptos. Magna duis consequat rhoncus nec posuere gravida suspendisse bibendum massa.</p>\r\n\r\n<p>Mauris eget lacus sit. In facilisi nostra rutrum. Lorem ut sapien justo sed diam amet nulla. Pellentesque magna rutrum cras. Eget ultrices dis ullamcorper vel.</p>\r\n\r\n<p>Ipsum eget montes vestibulum. Adipiscing nulla aliquam facilisis. Libero suspendisse quisque tempus. Ut nunc phasellus donec. Quam magna dolor rhoncus. Dui sodales vestibulum lacus morbi arcu nec id. Pede donec id enim. Bibendum fusce faucibus vulputate. Eleifend iste ut rhoncus eleifend praesent felis pretium massa felis ac leo erat adipiscing.</p>\r\n	Nam ipsum sit id.	ff8081815a72234e015a725be40a0028
ff8081815a72234e015a725d5a77002b	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Sit vel porttitor quam. Elit porta corporis rutrum. Ipsum purus sollicitudin pellentesque. Tincidunt eget litora nullam. Arcu pede hendrerit dolor sagittis mollis netus quam feugiat.</p>\r\n\r\n<p>Donec eu gravida elementum. Tempus velit a diam. Fermentum justo nisl aliquam nullam feugiat pretium id. In suspendisse sed mollit. Egestas sem justo aenean malesuada.</p>\r\n\r\n<p>Sodales sem porta consectetuer lacus ligula ea magna. Mauris nulla turpis a. Id mauris aliquam mollis maecenas sollicitudin leo duis. Dolore posuere penatibus convallis. Fames duis nibh nec. Curabitur eget dui velit. Tempor vivamus erat amet. Pede nisl mus quis vestibulum tincidunt at nec lorem dui fusce amet. Ut tempor suscipit cursus rutrum urna metus rutrum. Vel neque nulla maecenas. Augue fusce mauris dictum. Turpis magna purus bibendum. Sit at eu felis tempus convallis amet.</p>\r\n\r\n<p>Justo ultrices ut tempus sed scelerisque nulla vestibulum. Integer torquent rutrum metus. Phasellus tristique condimentum dui. Sit vel nunc montes. Pede lorem aliquam dapibus proin.</p>\r\n	Sit vel porttitor quam.	ff8081815a72234e015a725be40a0028
ff8081815a72234e015a725ddc5f002c	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Sapien lorem dapibus fringilla. Wisi ipsum nec nunc. In donec fringilla purus. Purus elit in tincidunt justo vestibulum volutpat dictumst. Nullam nibh sem aliquet molestie.</p>\r\n\r\n<p>Pharetra mi dui libero. Vestibulum aliquam egestas interdum consectetuer non amet aenean. Aenean urna ante pellentesque erat litora ut nulla. Dictum leo id mauris. Nec nec auctor amet. Vestibulum at sodales nunc a duis lobortis platea. Curabitur interdum consectetuer auctor. Sed ultricies porttitor eget. Sed in laoreet dui consectetuer vestibulum.</p>\r\n\r\n<p>Quam vulputate facilisi velit habitasse nulla vel neque. Elit turpis ut tellus. Luctus libero minima lectus. Necessitatibus congue quos urna. Phasellus non pede aliquet nullam.</p>\r\n\r\n<p>Ornare vitae libero vivamus. Et vivamus mauris urna. Amet adipiscing lacus curabitur magna bibendum ut fermentum. Eleifend sit quam erat. Eget sed wisi quis. Nulla ultrices ligula sed. Condimentum nonummy lorem elit. Non praesent cras eu id eget turpis sit. Diam nulla etiam convallis lacinia enim sollicitudin vivamus lobortis arcu.</p>\r\n	Sapien lorem dapibus fringilla	ff8081815a72234e015a725be40a0028
ff8081815a72234e015a72600cb4002f	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Volutpat id neque non dis neque pharetra augue. Quis tellus wisi nec. Diam lacinia libero faucibus. A felis ut con. Id placerat a malesuada. Massa aliquip sapien vel. Tellus molestie donec mattis. Quis vestibulum fusce pellentesque gravida nec congue tellus. Orci et tellus lectus penatibus magna sed magna aliquet placerat.</p>\r\n\r\n<p>Orci wisi sodales lectus. Nunc curae quisque vitae luctus id justo purus. Dictumst nam eget amet. Ac ac donec at. Duis habitasse diam odio porttitor.</p>\r\n\r\n<p>Et lacus aenean nibh pellentesque commodo ullamcorper elit. Sed libero luctus consequat. Pellentesque etiam tellus aliquam. Etiam bibendum metus maecenas. Nibh viverra urna a in.</p>\r\n\r\n<p>Ante accumsan neque tellus in libero aliquam in. Ligula egestas ornare dui. Ultrices nonummy duis nulla. Aliquam amet tempus pellentesque. Libero dui luctus suscipit. A rutrum a faucibus amet ad pulvinar justo. Sociosqu nibh rutrum vel. Ipsum mattis luctus adipisicing. Aliquam mauris mi fringilla nec porttitor nulla risus erat luctus.</p>\r\n	Volutpat id neque non dis	ff8081815a72234e015a725ef3cf002d
ff8081815a72234e015a726084d30030	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Quam magna ultricies potenti. Lectus ac id maecenas. Wisi class velit turpis. Torquent dui lectus dui molestie lobortis sed lorem. Suspendisse ac ligula mattis porta.</p>\r\n\r\n<p>At libero urna adipiscing ipsum nibh vitae vel. Nihil aliquet donec sed metus rhoncus tempus nulla. Tortor sed dolor vel. Consectetuer vivamus ut turpis. Consectetuer placerat quis mauris. Consequat elementum scelerisque tellus. Eget diam risus viverra. Pede cursus a adipiscing vel rutrum congue curabitur. Aliquet odio fermentum scelerisque. Hac scelerisque in dignissimos lacus scelerisque et ultricies. Quis ut non et purus amet ipsum ut. Neque tristique dignissim massa. Libero nam semper imperdiet ad sem orci.</p>\r\n\r\n<p>A vel ligula ridiculus. Rutrum lacus ultrices at. Mauris suscipit vel euismod. Lacus euismod porttitor quo aliquam fusce non placerat. Adipiscing vivamus cursus donec vitae.</p>\r\n\r\n<p>Penatibus maecenas ultricies erat. Enim labore officiis consequat. Sit eros in leo massa neque eleifend magna. Tempor phasellus praesent maecenas. Donec faucibus integer class cursus.</p>\r\n	Quam magna ultricies potenti.	ff8081815a72234e015a725ef3cf002d
ff8081815a72234e015a7260cf250031	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Suspendisse massa faucibus pulvinar libero mauris posuere in. Donec pellentesque amet lobortis enim aut libero egestas. Rutrum quam consequatur justo. Lorem accumsan montes aenean faucibus et ante vestibulum. Leo sed sapien mauris. Placerat per eu in. Porttitor wisi mollis cubilia. Diam auctor odio duis. Venenatis libero lacus eget auctor justo.</p>\r\n\r\n<p>Porttitor lacus nec aliquet. Neque in adipiscing consequat. Vestibulum nisl libero a. Ut placerat tellus sapien in rutrum tristique non. Tincidunt ut fugiat magnis nec.</p>\r\n\r\n<p>Placerat auctor ligula natoque. Ultricies nulla euismod hendrerit. Turpis ipsum orci at augue ac ultrices mattis. Eget ut dapibus quis. Tincidunt class massa ut nunc.</p>\r\n\r\n<p>Congue morbi cursus velit. Tortor magna sit ac maecenas pulvinar velit nullam. Nullam ut aliquam aenean. Enim mauris sapien odio. Luctus ullamcorper at enim. Praesent aliquam potenti sit. Lectus vivamus leo metus turpis odio et aptent. Id enim eget blandit non netus dapibus dolor. Ipsum vivamus augue tristique scelerisque nonummy.</p>\r\n	Suspendisse massa faucibus pulvinar	ff8081815a72234e015a725ef3cf002d
ff8081815a72234e015a726309950034	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Integer integer ultricies sed. Et pellentesque suspendisse feugiat. Est nec nunc et. Sit massa mauris curabitur. Dictum vel amet sem tortor laoreet sit nullam dolor.</p>\r\n\r\n<p>In id sem at. Odio cras parturient non risus nibh feugiat felis. Dictum ut nascetur scelerisque. Tellus vitae mollis erat. Ornare bibendum ac consequuntur. Conubia sapien massa mollis tempus fames ipsum mauris. Gravida ligula in gravida leo etiam vehicula ipsum. Curabitur sed nullam tortor. Dis mauris donec aliquam interdum felis.</p>\r\n\r\n<p>Turpis similique in sit. Ut etiam viverra venenatis. Nec ligula enim nec. Erat congue amet elit. Eleifend iaculis consectetuer non. Wisi in donec proin curabitur arcu et ultricies proin vel magna morbi. Ipsum eget nec bibendum aenean eleifend felis est. Amet a sit iaculis. Augue ut nec libero sed dictum.</p>\r\n\r\n<p>Nullam consequat dolor class. Interdum elit aliquam odio vestibulum blandit mi eget. Ultricies id sit magna. Ac elementum habitant mauris. A tempor eget mauris nam.</p>\r\n	Integer integer ultricies sed	ff8081815a72234e015a72618c690032
ff8081815a72234e015a72636d310035	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>At modi risus euismod. Libero nisl dolor phasellus luctus ultrices nunc ligula. Praesent id sit dui. Eleifend et ornare amet. Est in quis posuere phasellus.</p>\r\n\r\n<p>Nulla amet in eleifend. Dolor vehicula sit vehicula. Nulla velit odio sit. Sollicitudin nibh sapien mus. Sed phasellus ac habitant lectus at tellus ut. Hendrerit montes nam tellus. Erat dictum dolore proin et ut aliquam molestie sit massa nulla phasellus. Amet vel diam vel. Aenean accumsan hymenaeos ad integer volutpat.</p>\r\n\r\n<p>Sapien vestibulum gravida neque. Praesent pretium eu mattis. Rhoncus arcu et aliquet. Porttitor et donec integer nec ullamcorper adipiscing cras. Vitae hac eu in est.</p>\r\n\r\n<p>Egestas nibh massa nisl. Libero nunc ac enim. Luctus sit mauris ante. Pellentesque senectus ac turpis. Risus vestibulum tristique volutpat in ultricies nec fringilla. Nunc felis est proin. Eget nascetur montes sed. Leo tincidunt non hendrerit. Volutpat per mi urna ut eget eget ut tortor et eget nam risus ac.</p>\r\n	At modi risus euismod.	ff8081815a72234e015a72618c690032
ff8081815a72234e015a7263ae6a0036	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Tempor auctor mi ornare. Sed integer etiam malesuada lacus amet elit nec. Lectus massa vehicula vel et integer lacinia eu porta sapien ipsum vel. Congue velit ut neque. Lacus et est curabitur. Enim vestibulum orci at. Fringilla nam mauris sollicitudin. Quam magna libero mauris. Praesent egestas aliquet egestas sed nulla.</p>\r\n\r\n<p>Conubia dolor tortor a officia mollis penatibus magnis. Ante aliquam praesent aenean. Nunc aliquam fusce at. Scelerisque integer lobortis nec. Mattis luctus lectus dolor tristique.</p>\r\n\r\n<p>Turpis amet integer odio. Sed dignissim at porta. Erat libero vestibulum diam pellentesque donec morbi ut magna id mattis non. Vestibulum nullam nullam sed. Sed commodo turpis aliquam. Sed taciti integer nulla. Neque vestibulum quam suspendisse. Eget nulla pellentesque ut. Pharetra wisi placerat wisi ipsum euismod felis quis in itaque.</p>\r\n\r\n<p>Aenean volutpat massa ac. Lobortis quis rerum quam. Viverra sit curae quos. Magna tenetur facilisi nec mauris at elit luctus. Quam laoreet dolor vulputate ipsum.</p>\r\n	Tempor auctor mi ornare..	ff8081815a72234e015a72618c690032
ff8081815a72234e015a7265f1760039	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Quo pede faucibus amet. Vel aenean senectus quis. Luctus in aliquam vitae. Sociis a sed consequatur laoreet nulla velit libero. Duis vehicula quod blandit laboriosam.</p>\r\n\r\n<p>Lorem iaculis a arcu. Ut et sit mi consectetuer est dui id. At integer felis sit et dictum consectetuer dapibus. Massa mauris ligula commodo. Id pellentesque nibh arcu. Ut pharetra ac malesuada. Tortor quis sed vehicula. A nam id dui ut morbi pellentesque libero. Sit orci mauris erat quis phasellus.</p>\r\n\r\n<p>Integer vulputate elit sodales diam tincidunt at mi. Urna inceptos lacus ipsum. Minima fames fusce dignissim. Diam augue pellentesque sollicitudin. Aenean arcu augue adipiscing potenti.</p>\r\n\r\n<p>Est ut neque montes. Et faucibus luctus elementum. Vestibulum lorem consectetuer aliquet. Morbi id sapien purus. Elementum quis tellus sit ut nam quis aliquam elit maecenas vel non. Nulla risus eget donec. Amet et dictumst malesuada. Eu fermentum lectus dictumst pellentesque gravida erat at. Tempus tempor velit curabitur sed qui.</p>\r\n	Quo pede faucibus amet.	ff8081815a72234e015a726439b90037
ff8081815a72234e015a72664619003a	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Pede non ac sit. A suspendisse lacus lectus. Aliquet urna integer vivamus. Pretium elementum orci integer. Ultricies donec felis sit. Nulla amet eget vehicula. In fermentum aenean nullam. Egestas scelerisque morbi at. Massa arcu nec amet. Et euismod proident lectus elit massa fermentum libero. Nibh in nibh magna orci risus nulla pede pellentesque tincidunt suspendisse venenatis quisque cursus orci in. Eu eros tellus integer. Wisi enim diam praesent cursus lorem ipsum erat lacinia vestibulum adipiscing.</p>\r\n\r\n<p>Eu ipsum justo nonummy. Velit integer turpis aliquid. Tortor arcu diam aliquam. Nunc in purus ultricies. Congue proin non morbi vehicula hendrerit id a habitant.</p>\r\n\r\n<p>Et morbi sollicitudin eu. Nec wisi eget velit. Nulla quis aenean velit. Dui lacinia id ac. Amet nibh elit pharetra pharetra faucibus a id metus.</p>\r\n\r\n<p>Facilisis mauris eget phasellus. Eleifend a augue pellentesque. Felis integer eos arcu ut morbi convallis venenatis. Magna nec est donec. Suscipit congue id vestibulum senectus.</p>\r\n	Pede non ac sit. 	ff8081815a72234e015a726439b90037
ff8081815a72234e015a726686ea003b	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Sit scelerisque eget at. Semper wisi lacinia sit. Vitae etiam tellus eget. Ipsum natoque fringilla fringilla ut elementum et mi. Vel faucibus sed volutpat ipsum justo et vel. Vehicula odio pede nunc. Iaculis officia dolor vel in sed wisi sed. Quis eros pretium sit. Metus sed massa purus enim dictum.</p>\r\n\r\n<p>Eget porta class euismod rhoncus erat est justo. Enim facilisi eros quis. In erat adipiscing velit. Et adipiscing fermentum pulvinar. Ac nibh vel fringilla sit.</p>\r\n\r\n<p>Morbi aenean ac scelerisque. In sit enim nibh urna arcu eu nisl. Sed aliquam massa quis. Mi sed fusce ac. Euismod nec sed ut dolorum.</p>\r\n\r\n<p>A donec consequat lorem. Donec proin proin quis vitae con tellus vitae vulputate scelerisque arcu faucibus. Wisi urna pellentesque blandit. Vivamus wisi phasellus venenatis. Eros tellus consectetuer integer. Mauris pede imperdiet lobortis. Mauris morbi dapibus diam. Sit et mauris per. Duis fusce sed varius cras volutpat nunc quam veniam posuere.</p>\r\n	Sit scelerisque eget at.	ff8081815a72234e015a726439b90037
ff8081815a72234e015a7268638a003e	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Interdum reprehenderit nibh metus. Imperdiet bibendum ut eros. Id mauris elit consectetuer wisi amet a nibh. Nam integer leo dolor. Magna at sed elit faucibus.</p>\r\n\r\n<p>Vestibulum nostrum neque pharetra. Mattis eu purus scelerisque. Vitae et non turpis. Ligula pharetra pharetra torquent. Ligula vehicula elementum at. Faucibus pellentesque nec in. Dui suspendisse odio arcu sodales mauris massa cras. Placerat porttitor dui pellentesque orci integer scelerisque rutrum risus con sed aliquam. Rhoncus morbi vivamus vestibulum sit vel.</p>\r\n\r\n<p>Sed massa eget id. Aenean id sed mauris. Id dolor volutpat nostra. Nec luctus est ante. Rhoncus nam mattis nascetur vel magna bibendum sodales suspendisse.</p>\r\n\r\n<p>Vitae sit eu enim. In molestiae accumsan sed. In ultricies erat lectus. Mauris amet non purus. Sed tellus neque nunc massa non sed in. Ligula faucibus quia sed sit ut vulputate tristique. Pretium nunc fusce nibh. At turpis sed suscipit. Velit tincidunt posuere do aliquam sed ut diam ac eget.</p>\r\n	Interdum reprehenderit nibh metus.	ff8081815a72234e015a7267444d003c
ff8081815a72234e015a7268b062003f	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Nulla sit vulputate felis. Venenatis dicta fermentum feugiat. Nec duis quam aliquam eu nulla ac pulvinar. Nec velit curabitur nam. Lectus varius sit sit libero.</p>\r\n\r\n<p>Aenean dolor ultricies mollis. Nibh sollicitudin suspendisse odio etiam massa at amet. Lectus nibh aliquam elit. Molestie nulla magna a. Suspendisse massa natoque diam. Ac eget dui metus voluptatum porta volutpat sem. Odio lorem ipsum mattis. Hymenaeos vivamus tempus commodo placerat fusce neque ultrices. Ut nullam nibh semper at pellentesque.</p>\r\n\r\n<p>Laoreet integer erat in. Hendrerit libero placerat rutrum. Ipsum ipsum tincidunt expedita sodales at tortor malesuada. Magna ante tempor dolor. Gravida enim odio posuere suscipit.</p>\r\n\r\n<p>Velit nulla neque magnis cursus lacus tempor faucibus. Diam sagittis sit nec leo amet felis per. Id potenti libero at. Aenean eget risus sit. Amet amet tellus at. Dapibus proident diam ante. Montes eros quisque elit. Suspendisse vestibulum ut sociosqu. Nec nunc suscipit tempus dictumst nec sollicitudin mus nec iaculis.</p>\r\n	Nulla sit vulputate felis.	ff8081815a72234e015a7267444d003c
ff8081815a72234e015a726999310040	\\xaced00057372000d6a6176612e74696d652e536572955d84ba1b2248b20c00007870770703000007e1021978	<p>Sit mauris rhoncus et. Dignissim a aliquam et fringilla accusamus nonummy sollicitudin. Eget sit arcu turpis. Pellentesque tellus sodales turpis. Enim ultricies accumsan nulla doloribus.</p>\r\n\r\n<p>Rutrum elit nec non. Duis suscipit pellentesque viverra. Lorem dapibus phasellus ac. A interdum eleifend quisque est justo venenatis primis proin quam purus per mollis mi donec in. Leo ultricies et et. Fermentum pulvinar tortor erat. Non arcu vulputate sed. Interdum in mauris luctus. Curabitur porttitor elementum lacus purus posuere.</p>\r\n\r\n<p>Dolor nam purus lectus. Per vestibulum aliquam neque. Dolor sociosqu eros ut. Mauris assumenda sem duis orci ut per urna wisi gravida ut ligula pellentesque odio penatibus mauris. In nulla platea ipsum. Magnis accumsan massa pellentesque. Tincidunt mauris id est. Praesent viverra ac sed. Pede aenean pede gravida mollis eget.</p>\r\n\r\n<p>Litora tellus volutpat in. Malesuada blandit mattis hac vel a aliquam wisi. Feugiat sit volutpat in. Nibh tincidunt con semper. Amet nunc feugiat nullam eu.</p>\r\n	Sit mauris rhoncus et.	ff8081815a72234e015a7267444d003c
\.


--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profile (user_id, address, contact_number, first_name, gender, last_name, photo) FROM stdin;
ff8081815a71d880015a71d9040e0000	some text	01911654050	torikul	male	amal	\N
ff8081815a72234e015a7229c4170000	499 Harron Drive\r\nLinthicum Heights, MD 21090 	337-335-7227	Cindy	female	Marciniak	\N
ff8081815a72234e015a72309c9b0005	3233 Half and Half Drive\r\nFresno, CA 93721 	559-853-6077	Amelia	female	Martinez	\N
ff8081815a72234e015a7233e4b6000a	1653 Heather Sees Way\r\nMuskogee, OK 74401 	918-681-4645	Janice	male	Bostic	\N
ff8081815a72234e015a723b38aa000f	4517 Pearl Street\r\nSacramento, CA 95814 	916-313-6227	Trena	female	Nelson	\N
ff8081815a72234e015a723e462f0014	2789 Duck Creek Road\r\nSan Francisco, CA 94104 	650-748-0214	Steven	male	Simmons	\N
ff8081815a72234e015a72532e850019	320 Quiet Valley Lane\r\nLos Angeles, CA 90017 	818-924-7724	Ulysses	male	Dixon	\N
ff8081815a72234e015a725650f1001e	3394 Cemetery Street\r\nSan Francisco, CA 94104 	831-824-7889	Grant	male	Welch	\N
ff8081815a72234e015a7258ab740023	3866 Hamill Avenue\r\nSan Diego, CA 92103 	858-437-5920	John	male	Prioleau	\N
ff8081815a72234e015a725be40a0028	4856 Leisure Lane\r\nSan Luis Obispo, CA 93401	805-599-6337	Ann	female	Johnson	\N
ff8081815a72234e015a725ef3cf002d	4999 Park Avenue\r\nWest Sacramento, CA 95605 	916-468-3003	Darrel	male	Williamson	\N
ff8081815a72234e015a72618c690032	3770 Pearl Street\r\nSacramento, CA 95823 	916-399-8536	Larry	male	Jackson	\N
ff8081815a72234e015a726439b90037	1094 Parkview Drive\r\nBrea, CA 92621 	714-256-8809	Don	female	Medina	\N
ff8081815a72234e015a7267444d003c	4226 Haul Road\r\nMountain View, CA 94041 	650-944-8789	Dorothy	female	Agee	\N
ff8081815a72234e015a726cee100043	277 Liberty Avenue\r\nBurbank, CA 91505	714-458-4380	Marco	male	Hagen	\N
ff8081815a72234e015a726f58690045	3301 Lowndes Hill Park Road\r\nBakersfield, CA 93301 	661-517-6340	Benjamin	male	Denis	\N
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_roles (user_role_id, role, userid) FROM stdin;
ff8081815a71d880015a71d904430001	ROLE_SYSTEMADMIN	ff8081815a71d880015a71d9040e0000
ff8081815a72234e015a7229c4220001	ROLE_USER	ff8081815a72234e015a7229c4170000
ff8081815a72234e015a72309c9b0006	ROLE_USER	ff8081815a72234e015a72309c9b0005
ff8081815a72234e015a7233e4b7000b	ROLE_USER	ff8081815a72234e015a7233e4b6000a
ff8081815a72234e015a723b38aa0010	ROLE_USER	ff8081815a72234e015a723b38aa000f
ff8081815a72234e015a723e462f0015	ROLE_USER	ff8081815a72234e015a723e462f0014
ff8081815a72234e015a72532e85001a	ROLE_USER	ff8081815a72234e015a72532e850019
ff8081815a72234e015a725650f1001f	ROLE_USER	ff8081815a72234e015a725650f1001e
ff8081815a72234e015a7258ab740024	ROLE_USER	ff8081815a72234e015a7258ab740023
ff8081815a72234e015a725be40a0029	ROLE_USER	ff8081815a72234e015a725be40a0028
ff8081815a72234e015a725ef3cf002e	ROLE_USER	ff8081815a72234e015a725ef3cf002d
ff8081815a72234e015a72618c6a0033	ROLE_USER	ff8081815a72234e015a72618c690032
ff8081815a72234e015a726439b90038	ROLE_USER	ff8081815a72234e015a726439b90037
ff8081815a72234e015a7267444d003d	ROLE_USER	ff8081815a72234e015a7267444d003c
ff8081815a72234e015a726bba260042	ROLE_USER	ff8081815a72234e015a726bba250041
ff8081815a72234e015a726cee100044	ROLE_ADMIN	ff8081815a72234e015a726cee100043
ff8081815a72234e015a726f58690046	ROLE_ADMIN	ff8081815a72234e015a726f58690045
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (userid, email, enabled, password, username) FROM stdin;
ff8081815a71d880015a71d9040e0000	torikraju@hotmail.com	t	$2a$10$DLbBPLCdVAC9OR/iCJGjfORE/yZXHBAbzlDbdtqOi6Vq6DBhtsaYK	torikraju
ff8081815a72234e015a7229c4170000	testUser1@email.com	t	$2a$10$xndZ2F9BSj1ny3jERgOyPOkFSLScLh2BXsjVcPsVqZfj1Tc/eTUuu	testuser1
ff8081815a72234e015a72309c9b0005	AmeliaMMartinez@jourrapide.com	t	$2a$10$7syuKXEciB770YH0U/P2JuZPllOevHBg1UbBy88pY0gfV5Mb0Tm9q	AmeliaMMartinez
ff8081815a72234e015a7233e4b6000a	JaniceBBostic@jourrapide.com	t	$2a$10$0izahnnmjWRYE8C5oQw3eO7K8IFyqcLYx4h.TPsRkqa8uQ9YAs.ju	JaniceBBostic
ff8081815a72234e015a723b38aa000f	TrenaENelson@tele.com	t	$2a$10$qBIrjmUiosUaO8txM.aPvutPnLyTHbiK2IFs0obYh1Jd/nuFkOhrS	TrenaENelson
ff8081815a72234e015a723e462f0014	StevenLSimmons@teleworm.com	t	$2a$10$6cZfDLMtsQMvybr6i0/Ag.UMwTZnSL2czTjMCkzJzfsaPlmHg.vgG	StevenLSimmons
ff8081815a72234e015a72532e850019	UlyssesCDixon@rhyta.com	t	$2a$10$AwvVHApiPAEH07NL.WLIve756DA7eN5VQ.oSjTz7uLTVR/mfomiw.	UlyssesCDixon
ff8081815a72234e015a725650f1001e	GrantEWelch@dayrep.com	t	$2a$10$6ggVzqQO2IyUJNEI0pZ5culNWpHUdYVZ.iJhnekXtKZhxTRokVTU.	GrantEWelch
ff8081815a72234e015a7258ab740023	JohnDPrioleau@jourrapide.com	t	$2a$10$3SOrvtedB6C6C.vCMUPWPedNiNehZ//ibtefLgW2RYI2tnGNZ5J.6	JohnDPrioleau
ff8081815a72234e015a725be40a0028	AnnJJohnson@rhyta.com	t	$2a$10$dPFS1cmqhaQYeNkkZC9QneETcxUo0Kyh3O2xAJmUZFUeMi78biZD2	AnnJJohnson
ff8081815a72234e015a725ef3cf002d	DarrelJWilliamson@teleworm.us	t	$2a$10$2CpDDCgmvJbQt/qQjaiFbuV/f3RH34pUCVKVzesTLdJaU6VooZH8y	DarrelJWilliamson
ff8081815a72234e015a72618c690032	LarryEJackson@dayrep.com	t	$2a$10$0/deUEfxWE.dS0LqZTNAvOlGOaA1Jh82BYWMwhObiucb2PMMndigO	LarryEJackson
ff8081815a72234e015a726439b90037	DonLMedina@rhyta.com	t	$2a$10$0oLv0xXwwRMTmO8It81iSOexO3dlmDOAKRDwhI9MBvflhAGFwPiRS	DonLMedina
ff8081815a72234e015a7267444d003c	DorothyJAgee@armyspy.com	t	$2a$10$QFubFAv3yray/ES3MIKF2.zHqnFJ4xEt7xlAd0GM4vh8lI2SQttBO	DorothyJAgee
ff8081815a72234e015a726bba250041	EveDLedbetter@dayrep.com	t	$2a$10$XuisIUY1WE7PJOlX4MHC1uNgy.qnRjgpbs545l5Wdzq/oLjZRXuum	EveDLedbette
ff8081815a72234e015a726cee100043	MarcoCHagen@rhyta.com	t	$2a$10$m.ymylQdaHaUajTU/UUEsu6Dme3ULDla/pZFeylvImQJV1l7dBWbq	MarcoCHagen
ff8081815a72234e015a726f58690045	BenjaminHDenis@dayrep.com	t	$2a$10$U1aV/EB6LAh7ccAOq8reCecl65T0yY/BpquHpwhKCDyx24pwHsaAm	testadmin1
\.


--
-- Name: contact_us_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);


--
-- Name: notice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notice
    ADD CONSTRAINT notice_pkey PRIMARY KEY (id);


--
-- Name: profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (user_id);


--
-- Name: uk_6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);


--
-- Name: uk_r43af9ap4edm43mmtq01oddj6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT uk_r43af9ap4edm43mmtq01oddj6 UNIQUE (username);


--
-- Name: user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_role_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- Name: fk4fub0vor19ask0laxnfh7fick; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notice
    ADD CONSTRAINT fk4fub0vor19ask0laxnfh7fick FOREIGN KEY (userid) REFERENCES users(userid);


--
-- Name: fk6qgn9xtttlujey5sa2j7qow4d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT fk6qgn9xtttlujey5sa2j7qow4d FOREIGN KEY (userid) REFERENCES users(userid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

