package net.ausiasmarch.foxforumserver.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import net.ausiasmarch.foxforumserver.entity.ReplyEntity;

public interface ReplyRepository extends JpaRepository<ReplyEntity, Long> {
    Page<ReplyEntity> findByUserId(Long id, Pageable pageable);

    Page<ReplyEntity> findByThreadId(Long id, Pageable pageable);

    @Query(value = "SELECT r.*, COUNT(rt.id) as rating_count FROM reply r LEFT JOIN rating rt ON r.id = rt.id_reply GROUP BY r.id ORDER BY rating_count DESC", nativeQuery = true)
    Page<ReplyEntity> findRepliesByRatingNumberDesc(Pageable pageable);

    @Query(value = "SELECT r.*, COUNT(rt.id) as rating_count FROM reply r LEFT JOIN rating rt ON r.id = rt.id_reply JOIN thread t ON r.id_thread = t.id WHERE t.id_user = ?1 GROUP BY r.id ORDER BY rating_count DESC", nativeQuery = true)
    Page<ReplyEntity> findRepliesByRatingNumberDescFilterByUserId(Long userId, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE reply AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
