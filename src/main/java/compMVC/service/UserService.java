package compMVC.service;


import compMVC.dao.users.UserDAO;
import compMVC.model.users.UserRole;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("userDetailsService")
public class UserService implements UserDetailsService {

        @Autowired
        private UserDAO userDAO;

        @Transactional(readOnly=true)
        @Override
        public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {

            compMVC.model.users.User user = userDAO.findByUserName(username);
            List<GrantedAuthority> authorities = buildUserAuthority(user.getUserRole());

            return buildUserForAuthentication(user, authorities);

        }
        private User buildUserForAuthentication(compMVC.model.users.User user, List<GrantedAuthority> authorities) {
            return new User(user.getUsername(), user.getPassword(), user.isEnabled(), true, true, true, authorities);
        }

        private List<GrantedAuthority> buildUserAuthority(Set<UserRole> userRoles) {

            Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();


            for (UserRole userRole : userRoles) {
                setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
            }

            List<GrantedAuthority> Result = new ArrayList<>(setAuths);

            return Result;
        }
}
