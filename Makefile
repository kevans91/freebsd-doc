.ORDER: prepare generate
.ORDER: prepare all

SUBDIR+=	documentation
SUBDIR+=	website

SUBDIR_PARALLEL=	yes
SUBDIR_TARGETS+=	generate prepare

.include <bsd.subdir.mk>
